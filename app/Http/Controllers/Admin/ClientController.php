<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;

class ClientController extends Controller
{
    public function __construct()
    {
        $this->middleware('can:admin.clients.index')->only('index');
        $this->middleware('can:admin.clients.create')->only('create','store');
        $this->middleware('can:admin.clients.edit')->only('edit','update');
        $this->middleware('can:admin.clients.destroy')->only('destroy');
    }

     /////////////////// - INDEX DE CLIENTES - ///////////////////////////////////
    public function index()
    {
        return view('admin.clients.index');
    }

    /////////////////// - REDNDERIZAR VISTA PARA CREAR - ///////////////////////////////////
    public function create()
    {
        //
    }

   /////////////////// - ALMACENAR CLIENTES - ///////////////////////////////////
    public function store(Request $request)
    {
        //
    }

    /////////////////// - MOSTRAR CLIENTE - ///////////////////////////////////
    public function show(Client $client)
    {
        //
    }

  
    /////////////////// - EDITAR CLIENTE - ///////////////////////////////////
    public function edit(Client $client)
    {
        return view('admin.clients.edit',compact('client'));
    }

    /////////////////// - ACTUALIZAR CLIENTE - ///////////////////////////////////
    public function update(Request $request, Client $client)
    {
        $data = $request->validate([
            'name' => "required|unique:clients,name,$client->id",
            'email' => "required|unique:clients,email,$client->id",
            'telephone' => 'required',
            'country' => 'required',
            'state'  => 'required',
            'city'  => 'required',
            'direction'  => 'required',
        ]);
    
        $client->update([
                'name'=> $data['name'],
                'email'=> $data['email'],
                'telephone'=> $data['telephone']
            ]);

        $client->address()->update([ 
            'country'=> $data['country'],
            'state'=> $data['state'],
            'city'=> $data['city'],
            'direction'=> $data['direction'],
            'floor'=> $request['floor'],
            'departament'=> $request['departament'],
            'description'=> $request['description']
        ]);
    
        return redirect()->route('admin.clients.edit',$client)->with('info','El cliente se actualizo con exito');
    }

    /////////////////// - ELIMINAR CLIENTE - ///////////////////////////////////
    public function destroy(Client $client)
    {
       $client->delete();
       return redirect()->route('admin.clients.index')->with('eliminar','ok');
    }
}
