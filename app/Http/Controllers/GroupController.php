<?php

namespace App\Http\Controllers;

use App\Models\Classroom;
use App\Models\Group;
use App\Models\GroupDetail;
use App\Models\GroupMember;
use App\Models\Materi;
use App\Models\Material;
use App\Models\Notifikasi;
use App\Models\Student;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    // Menampilkan form untuk membuat kelompok
    public function create()
    {
        $materials = Materi::whereDoesntHave('groups')->get();
        $siswa = User::all(); // Ambil semua materi

        // $classes = Classroom::with('students')->get(); // Ambil semua kelas beserta siswa

        return view('pages.add-group', compact('materials', 'siswa'));
    }

    public function generateGroups(Request $request)
    {
        $request->validate([
            'group_size' => 'required|integer|min:1',
        ]);

        // Ambil semua siswa
        $siswa = User::where('role', '=', 'Murid')->get()->shuffle();

        // Membagi siswa menjadi kelompok-kelompok sesuai jumlah anggota per kelompok
        $groupSize = $request->group_size;
        $groups = $siswa->chunk($groupSize);

        // Buat tampilan HTML untuk kelompok
        $html = view('components.generate', compact('groups'))->render();

        // Simpan data kelompok dalam array yang bisa digunakan untuk disimpan
        $groupsData = $groups->map(function ($group) {
            return $group->pluck('id'); // Simpan user_id dari tiap anggota kelompok
        });

        // Kembalikan HTML dan data kelompok sebagai response AJAX
        return response()->json([
            'html' => $html,
            'groups_data' => $groupsData
        ]);
    }

    // Menyimpan kelompok yang baru dibuat
    public function store(Request $request)
    {
        // Validasi input dari form
        $request->validate([
            'title' => 'required|string|max:255',
            'materi_id' => 'required|exists:materi,id', // Pastikan materi_id valid
            'group_size' => 'required|integer|min:1',   // Pastikan jumlah anggota per kelompok valid
            'generated_groups_data' => 'required|json', // Pastikan hasil generate kelompok dikirim dalam format JSON
        ]);

        // Buat grup baru
        $group = Group::create([
            'judul' => $request->title,
            'materi_id' => $request->materi_id,
            'total_members' => $request->group_size,
        ]);

        // Ambil hasil generate dari request
        $groupsData = json_decode($request->generated_groups_data, true);

        // Loop untuk menyimpan data group_detail dan group_members
        foreach ($groupsData as $groupIndex => $members) {
            // Simpan detail kelompok (GroupDetail) per kelompok
            $groupDetail = GroupDetail::create([
                'group_id' => $group->id,
                'group_name' => 'Group ' . ($groupIndex + 1), // Nama kelompok
            ]);

            // Simpan anggota kelompok (GroupMember) per anggota di setiap group_detail
            foreach ($members as $memberId) {
                GroupMember::create([
                    'group_detail_id' => $groupDetail->id, // ID detail kelompok
                    'user_id' => $memberId,                // ID anggota
                ]);

                // Kirim notifikasi untuk setiap anggota yang ditambahkan ke kelompok

            }
        }

        Notifikasi::create([
            'role' => 'Murid', // Anda bisa mengganti dengan role yang sesuai
            'judul' => 'Kelompok Baru Sudah Dibentuk',
            'deskripsi' => 'Silahkan cek di menu Groups untuk melihat posisi kelompok yang baru dibentuk.',
            'is_seen' => 'N',
            'created_at' => Carbon::now('Asia/Jakarta'),
            'updated_at' => Carbon::now('Asia/Jakarta')
        ]);

        // Redirect ke halaman lain setelah data disimpan
        return redirect()->route('groups.index')->with('success', 'Group and members have been created successfully.');
    }


    // Menampilkan daftar kelompok yang telah dibuat
    public function index()
    {
        $groups = Group::with('materi')->get();
        // dd($groups);
        return view('pages.group', compact('groups'));
    }

    public function indexMurid()
    {
        $groups = Group::with('materi')->get();
        // dd($groups);
        return view('pages.group-murid', compact('groups'));
    }

    public function detailGroup(Request $request)
    {
        // Ambil detail group berdasarkan ID dari URL segment
        $detail = Group::with('materi')->where('id', $request->segment(3))->first();

        // Ambil semua detail anggota per kelompok, dengan relasi yang benar
        $groupDetails = GroupDetail::where('group_id', $detail->id)->with('groupMembers.user')->get();

        return view('pages.detail-group', compact('detail', 'groupDetails'));
    }

    public function edit($id)
    {
        // Ambil data group berdasarkan ID
        $group = Group::with('groupDetails.groupMembers.user')->findOrFail($id);
        $materials = Materi::all(); // Ambil semua materi

        // Ambil hasil generate kelompok sebelumnya
        // Ambil hasil generate kelompok sebelumnya
        $generatedGroups = $group->groupDetails->map(function ($detail) {
            // Ambil nama lengkap user, bukan hanya ID
            return $detail->groupMembers->map(function ($member) {
                return $member->user->nama_lengkap; // Ganti user_id dengan nama lengkap (misal: name)
            });
        });

        // dd($generatedGroups);

        return view('pages.edit-group', compact('group', 'materials', 'generatedGroups'));
    }

    public function update(Request $request, $id)
    {
        // Validasi input dari form
        $request->validate([
            'title' => 'required|string|max:255',
            'materi_id' => 'required|exists:materi,id', // Pastikan materi_id valid
            'group_size' => 'required|integer|min:1',
            'generated_groups_data' => 'required|json', // Hasil generate kelompok
        ]);

        // Ambil grup yang akan diupdate
        $group = Group::findOrFail($id);

        // Update data grup
        $group->update([
            'judul' => $request->title,
            'materi_id' => $request->materi_id,
            'total_members' => $request->group_size,
        ]);

        // Hapus anggota dari setiap detail kelompok
        foreach ($group->groupDetails as $groupDetail) {
            // Hapus semua anggota terkait
            $groupDetail->groupMembers()->delete();
        }

        // Hapus detail kelompok lama
        $group->groupDetails()->delete();

        // Simpan hasil generate yang baru
        $groupsData = json_decode($request->generated_groups_data, true);

        foreach ($groupsData as $groupIndex => $members) {
            $groupDetail = GroupDetail::create([
                'group_id' => $group->id,
                'group_name' => 'Group ' . ($groupIndex + 1),
            ]);

            foreach ($members as $memberId) {
                GroupMember::create([
                    'group_detail_id' => $groupDetail->id,
                    'user_id' => $memberId,
                ]);
            }
        }

        // Redirect ke halaman lain setelah data disimpan
        return redirect()->route('groups.index')->with('success', 'Group and members have been updated successfully.');
    }

    public function delete($id)
    {
        // Ambil grup berdasarkan ID
        $group = Group::with('groupDetails.groupMembers')->findOrFail($id);

        // Hapus anggota dari setiap detail kelompok
        foreach ($group->groupDetails as $groupDetail) {
            // Hapus semua anggota terkait
            $groupDetail->groupMembers()->delete();
        }

        // Hapus detail kelompok
        $group->groupDetails()->delete();

        // Hapus grup
        $group->delete();

        // Redirect ke halaman lain setelah data dihapus
        return redirect()->route('groups.index')->with('success', 'Group has been deleted successfully.');
    }
}
