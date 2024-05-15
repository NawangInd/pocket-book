<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use App\models\Admin;
use App\Models\Materi;
use App\Models\Notifikasi;
use App\Models\User;
use Carbon\Carbon;

class DashboardController extends Controller
{

    public function index()
    {
        return view('pages.dashboard-guru');
    }

    public function indexDashboardMurid()
    {
        $newest_notifikasi = Notifikasi::where('role', '=', 'Murid')->orderBy('id', 'desc')->first();




        // dd($data);
        return view('pages.dashboard', compact('newest_notifikasi'));
    }

    public function detailMateri(Request $request)
    {
        $materi = Materi::where([
            'id' => $request->segment(3)
        ])->first();

        // dd($materi);
        return view('pages.detail-materi', compact('materi'));
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
