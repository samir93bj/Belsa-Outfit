<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Waist;
use Illuminate\Http\Request;

class WaistController extends Controller
{
    public function __construct()
    {
        $this->middleware('can:admin.waists.index')->only('index');
        $this->middleware('can:admin.waists.create')->only('create','store');
        $this->middleware('can:admin.waists.edit')->only('edit','update');
        $this->middleware('can:admin.waists.destroy')->only('destroy');
    }
    
     /////////////////// - INDEX DE CATEGORIAS - ///////////////////////////////////
    public function index()
    {
        return view('admin.waists.index');
    }

  
    public function create() 
    {
        //
    }

  
    public function store(Request $request)
    {
        //
    }
 
  
    public function show(Waist $waist)
    {
        //
    }
 
   ////////////////////-RENDERIZAR VISTA PARA EDITAR CATEGORIA-////////////////////////
    public function edit(Waist $waist)
    {
        return view('admin.waists.edit', compact('waist'));
    }

  
    ////////////////////-ACTUALIZAR CATEGORIA-////////////////////////
    public function update(Request $request, Waist $waist)
    {
        $request->validate([
            'name'=>'required',
            'slug' => "required|unique:colors,slug,$waist->id",
            'status' => 'required|in:1,2',
        ]);

        $waist->update($request->all());
        return redirect()->route('admin.waists.index')->with('info','El Talle se actualizo con exito');
    }

     ////////////////////-ELIMINAR CATEGORIA-////////////////////////
    public function destroy(Waist $waist)
    {
        $waist->delete();
        return redirect()->route('admin.waists.index')->with('eliminar','ok');
    }
}
 