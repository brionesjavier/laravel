<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class TicketController extends Controller
{
    //
    public function index(): View
    {

        $tickets= DB::table('tickets')->get();//SELECT * FROM tickets
        return view('tickets.index'/* ,['tickets'=>$tickets] */);

    }
}
