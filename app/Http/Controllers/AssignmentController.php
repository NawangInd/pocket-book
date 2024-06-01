<?php

namespace App\Http\Controllers;

use App\Models\ActivityLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use App\models\Admin;
use App\Models\Assignment;
use App\Models\Materi;
use App\Models\Notifikasi;
use App\Models\Quizzes;
use App\Models\User;
use Carbon\Carbon;

class AssignmentController extends Controller
{

    public function index()
    {
        $data = Assignment::orderBy('id', 'desc')
            ->get();

        // dd($data);
        return view('pages.assignment-guru', compact('data'));
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





    public function create()
    {
        $materi = Materi::all();
        // dd($materi);


        return view('pages.add-assignment', compact('materi'));
    }

    public function store(Request $request)
    {
        // dd($request->all());
        if ($request) {
            if ($request->hasFile('gambar') && $request->hasFile('file')) {
                // save gambar ke folder public
                $fileGambarName = $request->file('gambar')->getClientOriginalName();
                $request->file('gambar')->move('img/assignment', $fileGambarName);

                // save file ke folder public
                $fileName = $request->file('file')->getClientOriginalName();
                $request->file('file')->move('file_upload/assignment', $fileName);

                $assignment = new Assignment;
                $assignment->judul = $request->judul;
                $assignment->materi_id = $request->materi_id;
                $assignment->deskripsi = $request->deskripsi;
                $assignment->gambar = $fileGambarName;
                $assignment->file = $fileName;
                $assignment->start_date = $request->start_date;
                $assignment->end_date = $request->end_date;
                $assignment->created_at = Carbon::now();
                $assignment->updated_at = Carbon::now();


                // if ($materi->save()) {

                //     $notifikasi = new Notifikasi;
                //     $notifikasi->role = "Murid";
                //     $notifikasi->judul = "Materi baru dengan judul '" . $request->judul  . "' telah diunggah, yuk pelajari !!!";
                //     $notifikasi->is_seen = "N";
                //     $notifikasi->created_at = Carbon::now();
                //     $notifikasi->updated_at = Carbon::now();

                //     $notifikasi->save();

                //     return redirect('/teacher/materi');
                // }

                $assignment->save();
                return redirect('/teacher/assignment');
            }
            // ->with('success', 'Berhasil membuat Materi');
        } else {
            return redirect('/teacher/assignment');
            // ->with('failed', 'Gagal membuat Materi');
        }
    }
    public function edit(Request $request)
    {
        // $data['karyawan'] = Pegawai::where([
        //     'id' => $request->segment(3)
        // ])->first();
        $assignment = Assignment::where([
            'id' => $request->segment(3)
        ])->first();

        // dd($assignment);
        $materi = Materi::all();


        return view('pages.edit-assignment', compact('assignment', 'materi'));
    }

    public function update(Request $request)
    {

        $assignment = Assignment::where([
            'id' => $request->segment(3)
        ])->first();
        $assignment->judul = $request->judul;
        $assignment->materi_id = $request->materi_id;
        $assignment->deskripsi = $request->deskripsi;
        // $assignment->gambar = $fileGambarName;
        // $assignment->file = $fileName;
        $assignment->start_date = $request->start_date;
        $assignment->end_date = $request->end_date;
        $assignment->created_at = Carbon::now();
        $assignment->updated_at = Carbon::now();
        // $karyawan->image=$request->image;

        // if ($materi->save()) {
        if ($request->hasFile('gambar') && $request->hasFile('file')) {
            $fileGambarName = $request->file('gambar')->getClientOriginalName();
            $request->file('gambar')->move('img/assignment', $fileGambarName);

            // save file ke folder public
            $fileName = $request->file('file')->getClientOriginalName();
            $request->file('file')->move('file_upload/assignment', $fileName);

            $assignment->gambar = $fileGambarName;
            $assignment->file = $fileName;
            $assignment->save();
            return redirect('/teacher/assignment');
        } elseif ($request->hasFile('gambar')) {
            // dd($request->all());

            $fileGambarName = $request->file('gambar')->getClientOriginalName();
            $request->file('gambar')->move('img/assignment', $fileGambarName);


            $assignment->gambar = $fileGambarName;
            $assignment->save();
            return redirect('/teacher/assignment');
        } elseif ($request->hasFile('file')) {
            $fileName = $request->file('file')->getClientOriginalName();
            $request->file('file')->move('file_upload/assignment', $fileName);



            $assignment->file = $fileName;

            $assignment->save();
            return redirect('/teacher/assignment');
        } else {
            $assignment->save();
            return redirect('/teacher/assignment');
        }
    }

    public function destroy(Request $request, $id)
    {
        $assignment = Assignment::findOrFail($id);



        if ($assignment->delete()) {
            return redirect('/teacher/assignment');
        } else {
            return redirect('/teacher/assignment');
        }
    }
}
