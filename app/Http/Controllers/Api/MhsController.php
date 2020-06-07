<?php

namespace App\Http\Controllers\Api;

use App\Mhs;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\Auth;

class MhsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:api')->except(['index', 'show']);
    }
    public function index()
    {
        $data = Mhs::get();
        return response()->json(['data' => $data], 200);
    }

    public function store(Request $request)
    {
        $rules = [
            'nama' => 'required',
            'email' => 'required',
            'jk' => 'required',
        ];
        $error = Validator::make($request->all(), $rules);
        if ($error->fails()) {
            return response()->json(['error'=>$error->errors()->all()],400);
        }
        $book = Mhs::create([
            'nama' => $request->nama,
            'email' => $request->email,
            'jk' => $request->jk,
            'jurusan_id' => $request->jurusan_id,
        ]);
        return response()->json(['data' => $book, 'userid' => auth()->user()->name, 'message' => 'data success inserted'], 200);
    }

    public function show()
    {
    }

    public function update(Request $request)
    {

    }

    public function destroy()
    {
        return response()->json(null, 204);
    }
}
