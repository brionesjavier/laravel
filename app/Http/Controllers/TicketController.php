<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TicketController extends Controller
{
    //
    public function index(){

        //$tickets= DB::tabla('tickets')->all();//SELECT * FROM tickets
        return view('tickets.index'/* ,['tickets'=>$tickets] */);

    }
}
