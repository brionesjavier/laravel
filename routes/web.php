<?php

use App\Http\Controllers\CategorieController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\IdeaController;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});




require __DIR__.'/auth.php';
Route::get('/ticket', [TicketController::class, 'index'] )->name('ticket.index') ;
Route::get('/ideas', [IdeaController::class, 'index'])->name('idea.index');
Route::get('/ideas/crear', [IdeaController::class, 'create'])->name('idea.create');
Route::post('/ideas/crear', [IdeaController::class, 'store'])->name('idea.store');
Route::get('/ideas/editar/{idea}', [IdeaController::class, 'edit'])->name('idea.edit');
Route::put('/ideas/actualizar/{idea}', [IdeaController::class, 'update'])->name('idea.update');
Route::get('/ideas/{idea}', [IdeaController::class, 'show'])->name('idea.show');
Route::delete('/ideas/{idea}', [IdeaController::class, 'destroy'])->name('idea.destroy');
Route::put('/ideas/{idea}', [IdeaController::class, 'synchronizeLikes'])->name('idea.like');


Route::resource('categories', CategorieController::class);