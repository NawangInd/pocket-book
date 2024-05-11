<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use App\models\Admin;
use App\Models\Materi;
use App\Models\User;

class MateriController extends Controller
{

    public function index()
    {
        $data = Materi::join('user', 'user.id', '=', 'materi.user_id')
            ->get();

        // dd($data);
        return view('pages.materi-guru', compact('data'));
    }
}
