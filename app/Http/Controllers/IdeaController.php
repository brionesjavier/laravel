<?php

namespace App\Http\Controllers;

use App\Models\Idea;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;
use Illuminate\Support\Facades\Gate;


class IdeaController extends Controller
{

    private array $rule=[
            'title' => 'required|string|max:100',
            'description' => 'required|string|max:300',

    ];

    private array $errorMessages=[
        'title.required' => 'El campo Titulo es obligatorio',
        'description.required' => 'El campo Descripcion es obligatorio',
        'string' => 'Este campo debe sser del tipo String',
        'title.max' => 'El campo Titulo no debe ser mayor  a :max caracteres',
        'description.max' => 'El campo Descripcion no debe ser mayor  a :max caracteres',
];


    // /* ----------------select * from table ---------------- */
    public function index(Request $request): View
    {
        //$ideas= DB::table('ideas')->get();//select * from ideas
        $ideas = Idea::myIdeas($request->filtro)->theBest($request->filtro)->get();//filtro
        
        return view('ideas.index', ['ideas' => $ideas]);

    }


    public function create(): View
    {
        
        return view('ideas.create');
    }

 /* --------------insert into table (column) values (value); -------------- */
    public function store(Request $request): RedirectResponse
    {

        $validated = $request->validate($this->rule, $this->errorMessages);

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
        Gate::authorize('update',$idea);
        return view('ideas.edit')->with('idea', $idea);
    }

     /* -------update table set (column = value ) where id = ?------- */
    public function update(Request $request, Idea $idea): RedirectResponse
    {
        Gate::authorize('update',$idea);
        $validated = $request->validate($this->rule, $this->errorMessages);
        
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
        Gate::authorize('delete',$idea);
        $idea->delete();
        session()->flash('message', 'Idea eliminada correctamente!');
        return redirect()->route('idea.index');
    }

    public function synchronizeLikes(Request $request,Idea $idea): RedirectResponse
    {
        $this->authoriza('updateLikes', $idea);

        $request->user()->ideasLiked()->toggle([$idea->id]);//usuario puede dar muchos like

       // $auth()->use()->ideasLiked()->toggle([$idea->id]);
        //$idea->users()->toggle([$request->user()->id]); //idea tiene muchos usuario
        
        //$idea->users()->count();

        $idea->update(['likes'=>$idea->users()->count()]);

        return redirect()->route('idea.show', $idea);

    }
}
