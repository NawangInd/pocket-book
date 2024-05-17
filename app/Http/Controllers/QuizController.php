<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Questions;
use App\Models\Materi;
use App\Models\Quizzes;
use Illuminate\Http\Request;

class QuizController extends Controller
{
    public function index()
    {
        $quizzes = Quizzes::with('materi')->get();
        return view('pages.manage-kuis', compact('quizzes'));
    }

    public function create()
    {
        $materis = Materi::all();
        return view('pages.add-kuis', compact('materis'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'materi_id' => 'required|exists:materi,id',
            'title' => 'required|string|max:255',
        ]);

        // dd($request->title);

        Quizzes::create([
            'materi_id' => $request->materi_id,
            'title' => $request->title,
        ]);


        return redirect()->route('quizzes.index')->with('success', 'Quiz created successfully.');
    }

    public function show($id)
    {
        $quiz = Quizzes::with('questions')->findOrFail($id);
        return view('pages.detail-kuis', compact('quiz'));
    }

    public function edit($id)
    {
        $quiz = Quizzes::findOrFail($id);
        $materis = Materi::all();
        return view('quizzes.edit', compact('quiz', 'materis'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'materi_id' => 'required|exists:materi,id',
            'title' => 'required|string|max:255',
        ]);

        $quiz = Quizzes::findOrFail($id);
        $quiz->update([
            'materi_id' => $request->materi_id,
            'title' => $request->title,
        ]);

        return redirect()->route('quizzes.index')->with('success', 'Quiz updated successfully.');
    }

    public function destroy($id)
    {
        $quiz = Quizzes::findOrFail($id);
        $quiz->delete();

        return redirect()->route('quizzes.index')->with('success', 'Quiz deleted successfully.');
    }

    public function createQuestion($quiz_id)
    {
        $quiz = Quizzes::findOrFail($quiz_id);
        return view('pages.add-question', compact('quiz'));
    }

    public function storeQuestion(Request $request, $quiz_id)
    {
        $request->validate([
            'question' => 'required|string',
            'option_a' => 'required|string',
            'option_b' => 'required|string',
            'option_c' => 'required|string',
            'option_d' => 'required|string',
            'option_e' => 'required|string',
            'correct_answer' => 'required|string|in:A,B,C,D,E',
        ]);

        // dd($quiz_id);
        Questions::create([
            'quizzes_id' => $quiz_id,
            'question' => $request->question,
            'option_a' => $request->option_a,
            'option_b' => $request->option_b,
            'option_c' => $request->option_c,
            'option_d' => $request->option_d,
            'option_e' => $request->option_e,
            'correct_answer' => $request->correct_answer,
        ]);

        return redirect()->route('quizzes.show', $quiz_id)->with('success', 'Question added successfully.');
    }

    public function editQuestion($quiz_id, $question_id)
    {
        $question = Questions::findOrFail($question_id);
        return view('pages.edit-question', compact('question', 'quiz_id'));
    }

    public function updateQuestion(Request $request, $quiz_id, $question_id)
    {
        $request->validate([
            'question' => 'required|string',
            'option_a' => 'required|string',
            'option_b' => 'required|string',
            'option_c' => 'required|string',
            'option_d' => 'required|string',
            'correct_answer' => 'required|string|in:A,B,C,D,E',

        ]);

        $question = Questions::findOrFail($question_id);
        $question->update([
            'question' => $request->question,
            'option_a' => $request->option_a,
            'option_b' => $request->option_b,
            'option_c' => $request->option_c,
            'option_d' => $request->option_d,
            'option_e' => $request->option_e,
            'correct_answer' => $request->correct_answer,
        ]);

        return redirect()->route('quizzes.show', $quiz_id)->with('success', 'Question updated successfully.');
    }

    public function destroyQuestion($quiz_id, $question_id)
    {
        $question = Questions::findOrFail($question_id);
        $question->delete();

        return redirect()->route('quizzes.show', $quiz_id)->with('success', 'Question deleted successfully.');
    }
}
