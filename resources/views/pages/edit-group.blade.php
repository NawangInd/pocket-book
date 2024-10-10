@extends('layouts.app')

@section('title', 'Edit Group')

@push('style')
    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{ asset('library/summernote/dist/summernote-bs4.css') }}">
    <link rel="stylesheet" href="{{ asset('library/codemirror/lib/codemirror.css') }}">
    <link rel="stylesheet" href="{{ asset('library/codemirror/theme/duotone-dark.css') }}">
    <link rel="stylesheet" href="{{ asset('library/selectric/public/selectric.css') }}">
@endpush

@section('main')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>Edit Group</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                    <div class="breadcrumb-item"><a href="#">Group</a></div>
                    <div class="breadcrumb-item">Edit Group</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Form Edit Group</h4>
                            </div>
                            <form class="form" action="{{ route('groups.update', $group->id) }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <div>
                                            <input type="text" class="form-control" name="title"
                                                value="{{ $group->judul }}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>Choose Material</label>
                                        <select class="form-control select2" name="materi_id">
                                            <option value="" hidden>Choose Material</option>
                                            @foreach ($materials as $list)
                                                <option value="{{ $list->id }}"
                                                    {{ $group->materi_id == $list->id ? 'selected' : '' }}>
                                                    {{ $list->judul }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <input type="hidden" id="generated_groups_data" name="generated_groups_data">

                                    <div class="form-group">
                                        <label for="group_size">Member per Group</label>
                                        <input type="number" class="form-control" id="group_size" name="group_size"
                                            value="{{ $group->total_members }}" min="1">
                                    </div>

                                    <div class="form-group">
                                        <button id="generateBtn" class="btn btn-primary">Generate Kelompok</button>
                                        <button type="submit" class="btn btn-success">Save Group</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                {{-- Bagian untuk menampilkan hasil generate kelompok --}}
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Generated Groups</h4>
                            </div>
                            <div class="card-body" id="generatedGroups">
                                {{-- Hasil generate kelompok akan muncul di sini --}}
                                @foreach ($generatedGroups as $index => $group)
                                    <div class="card mb-3">
                                        <div class="card-body">
                                            <h5 class="card-title">Kelompok {{ $index + 1 }}</h5>
                                            <ul>
                                                @foreach ($group as $memberId)
                                                    <li> {{ $memberId }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

@push('scripts')
    <!-- JS Libraries -->
    <script src="{{ asset('library/summernote/dist/summernote-bs4.js') }}"></script>
    <script src="{{ asset('library/codemirror/lib/codemirror.js') }}"></script>
    <script src="{{ asset('library/codemirror/mode/javascript/javascript.js') }}"></script>
    <script src="{{ asset('library/selectric/public/jquery.selectric.min.js') }}"></script>

    <script>
        $(document).ready(function() {
            $('#generateBtn').on('click', function(e) {
                e.preventDefault();

                let groupSize = $('#group_size').val();

                $.ajax({
                    url: "{{ route('groups.generate') }}",
                    method: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        group_size: groupSize
                    },
                    success: function(response) {
                        // Tampilkan hasil generate kelompok dalam card
                        $('#generatedGroups').html(response.html);

                        // Simpan hasil generate (response data) ke dalam hidden input
                        $('#generated_groups_data').val(JSON.stringify(response.groups_data));
                    }
                });
            });
        });
    </script>
@endpush
