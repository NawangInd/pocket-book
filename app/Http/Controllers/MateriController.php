<?php

namespace App\Http\Controllers;

use App\Models\ActivityLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use App\models\Admin;
use App\Models\Materi;
use App\Models\Notifikasi;
use App\Models\User;
use Carbon\Carbon;

class MateriController extends Controller
{

    public function index()
    {
        $data = Materi::join('user', 'user.id', '=', 'materi.user_id')
            ->select('materi.*', 'user.nama_lengkap')
            ->get();

        // dd($data);
        return view('pages.materi-guru', compact('data'));
    }

    public function indexMateriMurid()
    {
        $data = Materi::join('user', 'user.id', '=', 'materi.user_id')
            ->select('materi.*', 'user.nama_lengkap')
            ->orderBy('id', 'desc')
            ->get();



        // dd($data);
        return view('pages.materi', compact('data'));
    }

    public function detailMateri(Request $request)
    {
        $materi = Materi::where([
            'id' => $request->segment(3)
        ])->first();

        $activityLog = ActivityLog::create([
            'user_id' => Session('user')['id'],
            'materi_id' => $request->segment(3),
            'start_time' => Carbon::now('Asia/Jakarta'),
        ]);

        // dd($activityLog);
        return view('pages.detail-materi', compact('materi', 'activityLog'));
    }

    public function logEndTime(Request $request)
    {
        // $activityLog = ActivityLog::findOrFail($request->log_id);
        // $activityLog->update([
        //     'end_time' => Carbon::now('Asia/Jakarta'),
        // ]);
        $activityLog = ActivityLog::where('id', $request->log_id)->first();

        if ($activityLog) {
            $activityLog->update(['end_time' => Carbon::now('Asia/Jakarta')]);

            // Create a notification for the teacher
            Notifikasi::create([
                'user_id' => $activityLog->user_id, // or the teacher's user_id
                'judul' => 'Murid selesai membaca materi',
                'deskripsi' => 'Murid ' . $activityLog->user->name . ' telah selesai membaca materi ' . $activityLog->materi->judul . ' selama ' . $activityLog->start_time->diffInMinutes($activityLog->end_time) . ' menit.',
                'is_seen' => 'N',
            ]);

            return response()->json(['message' => 'End time logged successfully']);
        }

        return response()->json(['message' => 'Log not found'], 404);



        // $logId = $request->input('log_id');
        // // Update the end time in the activity log
        // $activityLog = ActivityLog::find($logId);
        // if ($activityLog) {
        //     $activityLog->end_time = now();
        //     $activityLog->save();
        // }

        // return response()->json(['status' => 'success']);
    }

    public function create()
    {
        return view('pages.add-materi');
    }

    public function store(Request $request)
    {
        // dd($request->all());
        if ($request) {
            // $getPegawaiBaru = Pegawai::orderBy('created_at', 'desc')->first();
            // $getKonfigCuti = Konfig_cuti::where('tahun',(new \DateTime())->format('Y'))->first();

            $materi = new Materi;
            $materi->judul = $request->judul;
            $materi->user_id = 2;
            $materi->deskripsi = $request->deskripsi;
            $materi->created_at = Carbon::now();
            $materi->updated_at = Carbon::now();


            if ($materi->save()) {

                $notifikasi = new Notifikasi;
                $notifikasi->role = "Murid";
                $notifikasi->judul = "Materi baru dengan judul '" . $request->judul  . "' telah diunggah, yuk pelajari !!!";
                $notifikasi->is_seen = "N";
                $notifikasi->created_at = Carbon::now();
                $notifikasi->updated_at = Carbon::now();

                $notifikasi->save();

                return redirect('/teacher/materi');
            }
            // ->with('success', 'Berhasil membuat Materi');
        } else {
            return redirect('/teacher/materi');
            // ->with('failed', 'Gagal membuat Materi');
        }
    }
    public function edit(Request $request)
    {
        // $data['karyawan'] = Pegawai::where([
        //     'id' => $request->segment(3)
        // ])->first();
        $materi = Materi::where([
            'id' => $request->segment(3)
        ])->first();

        return view('pages.edit-materi', compact('materi'));
    }

    public function update(Request $request)
    {
        $materi = Materi::where([
            'id' => $request->segment(3)
        ])->first();
        // dd($request->image);
        $materi->judul = $request->judul;
        $materi->user_id = 2;
        $materi->deskripsi = $request->deskripsi;
        $materi->created_at = Carbon::now();
        $materi->updated_at = Carbon::now();
        // $karyawan->image=$request->image;

        if ($materi->save()) {

            return redirect('/teacher/materi');
        } else {
            return redirect('/teacher/materi');
        }
    }

    public function destroy(Request $request, $id)
    {
        $materi = Materi::findOrFail($id);



        if ($materi->delete()) {
            return redirect('/teacher/materi');
        } else {
            return redirect('/teacher/materi');
        }
    }
}
