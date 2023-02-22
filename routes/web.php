<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\LocalizationController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('', [EtudiantController::class, 'index']);
Route::get('/', [EtudiantController::class, 'index']);
Route::get('etudiant', [EtudiantController::class, 'index'])->name('etudiant.index');

Route::get('etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');

Route::get('etudiant-edit/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('etudiant-edit/{etudiant}', [EtudiantController::class, 'update']);
Route::delete('etudiant-edit/{etudiant}', [EtudiantController::class, 'destroy']);

Route::get('etudiant-create', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/etudiant-create', [EtudiantController::class, 'store']);

// Users sign in Sign up
Route::get('signup', [CustomAuthController::class, 'create'])->name('user.create');
Route::post('signup', [CustomAuthController::class, 'store'])->name('user.store');
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('login', [CustomAuthController::class, 'authentication'])->name('user.auth');
Route::get('logout', [CustomAuthController::class, 'logout'])->name('logout');

// Password / forgot / new
Route::get('forgot-password', [CustomAuthController::class, 'forgotPassword'])->name('forgot.pass');
Route::post('forgot-password', [CustomAuthController::class, 'tempPassword'])->name('temp.pass');
Route::get('new-password/{user}/{tempPassword}', [CustomAuthController::class, 'newPassword'])->name('new.pass');
Route::post('new-password/{user}/{tempPassword}', [CustomAuthController::class, 'storeNewPassword'])->name('store.pass');

//Langue
Route::get('/lang/{locale}', [LocalizationController::class, 'index'])->name('lang');

// PDF
//<FIXME> Route::get('/blog/{blogPost}/PDF', [ActionPostController????::class, 'showPdf']);

// Dashboard
Route::get('dashboard', [CustomAuthController::class, 'dashboard'])->name('dashboard');
