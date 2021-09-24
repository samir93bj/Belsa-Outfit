<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Color;
use Illuminate\Http\Request;

class ColorController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('can:admin.colors.index')->only('index');
        $this->middleware('can:admin.colors.create')->only('create','store');
        $this->middleware('can:admin.colors.edit')->only('edit','update');
        $this->middleware('can:admin.colors.destroy')->only('destroy');
    }

    public function index()
    {
        return view('admin.colors.index');
    }
 
 
    public function create()
    {
        //
    }

    
    public function store(Request $request)
    {
        //
    }

    public function show(Color $color)
    {
        // 
    }

    public function edit(Color $color)
    {
        return view('admin.colors.edit', compact('color'));
    }

    public function update(Request $request, Color $color)
    {
        $request->validate([
            'name'=>'required',
            'slug' => "required|unique:colors,slug,$color->id",
            'status' => 'required|in:1,2',
        ]);

        $color->update($request->all());
        return redirect()->route('admin.colors.index', $color)->with('info','El color se actualizo con exito');
    }

   
    public function destroy(Color $color)
    {
        $color->delete();
        return redirect()->route('admin.colors.index')->with('eliminar','ok');
    }
}
