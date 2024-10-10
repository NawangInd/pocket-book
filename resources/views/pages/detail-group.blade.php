@extends('layouts.app')

@section('title', 'Material')

@push('style')
    <!-- CSS Libraries -->
@endpush

@section('main')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1 class="text-capitalize">Judul {{ $detail->judul }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                    <div class="breadcrumb-item"><a href="/student/materi"> Material </a></div>
                </div>
            </div>

            <div class="section-body d-flex justify-content-center w-100">
                <div class="w-25 bg-white mr-2 px-4 py-3">
                    <h6>Materi : {{ $detail->materi->judul }}</h6>
                    <h6>Anggota / Kelompok : <br> {{ $detail->total_members }} anggota</h6>
                    @if (Session('user')['role'] === 'Guru')
                        <a href="edit" class="btn btn-primary">Edit Group</a>
                    @endif
                </div>
                <div class="bg-white px-5 w-75">
                    <div class="row py-4">
                        @foreach ($groupDetails as $groupDetail)
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 border mx-2 py-4">

                                <article class="article article-style-b">
                                    <div class="article-details">


                                        <h4>{{ $groupDetail->group_name }}</h4>
                                        <br>
                                        @foreach ($groupDetail->groupMembers as $member)
                                            <div class="article-title">
                                                <p> {{ $member->user->nama_lengkap }}</p>
                                            </div>
                                            {{-- <div class="article-cta">
                                            <a href="/student/detail-materi/{{ $member->user_id }}"
                                                class="btn btn-info w-100 mt-5">
                                                View <i class="fas fa-chevron-right"></i>
                                            </a>
                                        </div> --}}
                                        @endforeach
                                    </div>

                            </div>
                            </article>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
    </div>

@endsection

@push('scripts')
    <!-- JS Libraies -->

    <!-- Page Specific JS File -->
@endpush
