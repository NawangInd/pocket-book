@extends('layouts.app')

@section('title', 'Add Materi')

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
                <h1>Quiz</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                    <div class="breadcrumb-item"><a href="#">Materi</a></div>
                    <div class="breadcrumb-item">Add Materi</div>
                </div>
            </div>

            <div class="section-body">


                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            {{-- <div class="card-header">
                                <h4>Form Add Question</h4>
                            </div> --}}
                            <form class="form" action="{{ route('student.quizzes.submit', $quiz->id) }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                <?php $no = 1; ?>
                                <div class="card-body">

                                    @foreach ($quiz->questions as $question)
                                        <div class="form-group">
                                            <h6 class="form-label text-dark mb-4">{{ $no . '. ' . $question->question }}
                                            </h6>
                                            <div class="selectgroup w-100">
                                                <label class="selectgroup-item">
                                                    <input type="radio" name="question_{{ $question->id }}" value="A"
                                                        required class="selectgroup-input">
                                                    <span class="selectgroup-button">
                                                        A. {{ $question->option_a }}</span>
                                                </label>
                                                <label class="selectgroup-item">
                                                    <input type="radio" name="question_{{ $question->id }}" value="B"
                                                        required class="selectgroup-input">
                                                    <span class="selectgroup-button">B.
                                                        {{ $question->option_b }}</span>
                                                </label>
                                                <label class="selectgroup-item">
                                                    <input type="radio" name="question_{{ $question->id }}"
                                                        value="C" required class="selectgroup-input">
                                                    <span class="selectgroup-button">C.
                                                        {{ $question->option_c }}</span>
                                                </label>
                                                <label class="selectgroup-item">
                                                    <input type="radio" name="question_{{ $question->id }}"
                                                        value="D" required class="selectgroup-input">
                                                    <span class="selectgroup-button">D.
                                                        {{ $question->option_d }}</span>
                                                </label>
                                                <label class="selectgroup-item">
                                                    <input type="radio" name="question_{{ $question->id }}"
                                                        value="E" required class="selectgroup-input">
                                                    <span class="selectgroup-button">E.
                                                        {{ $question->option_e }}</span>
                                                </label>
                                            </div>
                                        </div>
                                        {{-- </div> --}}
                                        <?php $no++; ?>
                                    @endforeach
                                    {{-- <div class="form-group ">
                                        <label>{{ $question->question }}</label>
                                        <div class=" ">
                                            <input type="text" class="form-control" name="question">
                                        </div>
                                    </div> --}}


                                    <div class="form-group ">
                                        <div class="">
                                            <button class="btn btn-primary" type="submit">Publish</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


            </div>
        </section>
    </div>
@endsection

@push('scripts')
    <!-- JS Libraies -->
    <script src="{{ asset('library/summernote/dist/summernote-bs4.js') }}"></script>
    <script src="{{ asset('library/codemirror/lib/codemirror.js') }}"></script>
    <script src="{{ asset('library/codemirror/mode/javascript/javascript.js') }}"></script>
    <script src="{{ asset('library/selectric/public/jquery.selectric.min.js') }}"></script>

    <!-- Page Specific JS File -->
@endpush
