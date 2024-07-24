<?php

namespace App\Http\Controllers;

use App\Models\Idea;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;



class IdeaController extends Controller
{
    //
    public function index(): View
    {
        $ideas= DB::table('ideas')->get();//select * from ideas


        return view('ideas.index',['ideas' =>$ideas]);
        //return view('ideas.index').with([['ideas' =>$ideas]]);
    }

    public function create(): View{
        return view('ideas.create');
    }
    public function store(Request $request){

        $validated = $request->validate([
            'title' => 'required|string|max:100',
            'description' => 'required|string|max:300',
        ]);

        Idea::create([
            'user_id' => $request->user()->id,
            'description' => $validated['title'],
            'description' => $validated['description'],
            
        ]);

       // dd($request->all());
        return redirect()->route('idea.index');
    }
}
