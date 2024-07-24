<?php

namespace App\Http\Controllers;

use App\Models\Idea;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;



class IdeaController extends Controller
{
    // /* ----------------select * from table ---------------- */
    public function index(): View
    {
        //$ideas= DB::table('ideas')->get();//select * from ideas
        $ideas = Idea::get();

        return view('ideas.index', ['ideas' => $ideas]);

    }

    public function create(): View
    {
        
        return view('ideas.create');
    }

 /* --------------insert into table (column) values (value); -------------- */
    public function store(Request $request): RedirectResponse
    {

        $validated = $request->validate([
            'title' => 'required|string|max:100',
            'description' => 'required|string|max:300',
        ]);

        Idea::create([

            'user_id' => $request->user()->id,
            'title' => $validated['title'],
            'description' => $validated['description'],

        ]);

        session()->flash('message', 'Idea creada correctamente!');
        // dd($request->all());
        return redirect()->route('idea.index');
    }

    public function edit(Idea $idea): View
    {

        return view('ideas.edit')->with('idea', $idea);
    }

     /* -------update table set (column = value ) where id = ?------- */
    public function update(Request $request, Idea $idea): RedirectResponse
    {
        $validated = $request->validate([
            'title' => 'required|string|max:100',
            'description' => 'required|string|max:300',
        ]);
        
        $idea->update($validated);
        session()->flash('message', 'Idea actualizada correctamente!');
        return redirect()->route('idea.index');
    }

     /* --------------select * from table where id = ? -------------- */
    public function show(Idea $idea): View
    {
        return view('ideas.show')->with('idea', $idea);
        // return view('ideas.create');
    }

    /* --------------delete from table  where id = ? -------------- */
    public function destroy(Idea $idea): RedirectResponse
    {
        $idea->delete();
        session()->flash('message', 'Idea eliminada correctamente!');
        return redirect()->route('idea.index');
    }
}
