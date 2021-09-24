<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    public function __construct()
    {
        $this->middleware('can:admin.tags.index')->only('index');
        $this->middleware('can:admin.tags.create')->only('create','store');
        $this->middleware('can:admin.tags.edit')->only('edit','update');
        $this->middleware('can:admin.tags.destroy')->only('destroy');
    }
    
    //FUNCION PARA RENDERIZAR VISTA INDEX TAGS
    public function index()
    {
        return view('admin.tags.index');
    }

    //FUNCION PARA RENDER VISTA DE CREAR TAGS
    public function create()
    {
        return view('admin.tags.create');
    }

    //FUNCION PARA GUARDAR TAGS
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:tags',
            'status' => 'required|in:1,2',
        ]);

        $tag = Tag::create($request->all());
        return redirect()->route('admin.tags.edit', $tag)->with('info','El Tag se creo con exito');
    }
 
   //FUNCION PARA TAGS
    public function show()
    {
        //
    }
 
   //FUNCION PARA RENDERIZAR VISTA DE EDITAR TAGS
    public function edit(Tag $tag)
    {
        return view('admin.tags.edit', compact('tag'));
    }

    //FUNCION PARA ACTUALIZAR TAGS
    public function update(Request $request, Tag $tag)
    {
        $request->validate([
            'name' => 'required',
            'slug' => "required|unique:tags,slug,$tag->id",
            'status' => 'required|in:1,2',
        ]);

        $tag->update($request->all());
        return redirect()->route('admin.tags.edit',$tag)->with('info','El tag se actualizo de manera correcta');
    }

    //FUNCION PARA ELIMINAR TAGS
    public function destroy(Tag $tag)
    {
        $tag->delete();
        return redirect()->route('admin.tags.index')->with('eliminar','ok');
    }
}
