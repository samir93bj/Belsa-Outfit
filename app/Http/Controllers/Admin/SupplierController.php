<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    public function __construct()
    {
        $this->middleware('can:admin.suppliers.index')->only('index');
        $this->middleware('can:admin.suppliers.create')->only('create','store');
        $this->middleware('can:admin.suppliers.edit')->only('edit','update');
        $this->middleware('can:admin.suppliers.destroy')->only('destroy');
    }

    /////////////////// - INDEX DE PROVEEDORES - ///////////////////////////////////
    public function index()
    {
        return view('admin.suppliers.index');
    }

    /////////////////// - RENDERIZAR VISTA DE PROVEEDORES- ///////////////////////////////////
    public function create()
    {
        return view('admin.suppliers.create');
    }
 
   /////////////////// - ALMACENAR PROVEEDORES - ///////////////////////////////////
    public function store(Request $request)
    {

    $datos = $request->validate([
            'name' => 'required',
            'email' => 'required|unique:suppliers',
            'url'=> 'required',
            'telephone' => ' required',
            'country' => 'required',
            'state' => 'required',
            'city' => 'required',
            'direction' => 'required',
        ]);

        $supplier = Supplier::create([
                    'name'=> $datos['name'],
                    'email' => $datos['email'],
                    'url' => $datos['url'],
                    'telephone' => $datos['telephone']
                    ]);
 
        $supplier->address()->create([
            'country' => $datos['country'],
            'state' => $datos['state'],
            'city' => $datos['city'],
            'direction' => $datos['direction'],
            'floor' => $request['floor'],
            'departament' => $request['floor']
        ]);

        return redirect()->route('admin.suppliers.index')->with('info','El Proveedor se registro con exito');
    } 

   /////////////////// - MOSTRAR  PROVEEDOR - ///////////////////////////////////
    public function show(Supplier $supplier)
    {
        // 
    }

    /////////////////// - RENDERIZAR VISTA PARA ACTUALZIAR PROVEEDOR - ///////////////////////////////////
    public function edit(Supplier $supplier)
    {
        return view('admin.suppliers.edit',compact('supplier'));
    }
 
    /////////////////// - ACTUALIZAR PROVEEDOR - ///////////////////////////////////
    public function update(Request $request, Supplier $supplier)
    {
        $data = $request->validate([
            'name' => "required|unique:suppliers,name,$supplier->id",
            'email' => "required|unique:suppliers,email,$supplier->id",
            'url'=>'required',
            'telephone' => 'required',
            'country' => 'required',
            'state'  => 'required',
            'city'  => 'required',
            'direction'  => 'required',
        ]);
    
        $supplier->update([
                'name'=> $data['name'],
                'email'=> $data['email'],
                'url'=>$data['url'],
                'telephone'=> $data['telephone'],
            ]);

        $supplier->address()->update([ 
            'country'=> $data['country'],
            'state'=> $data['state'],
            'city'=> $data['city'],
            'direction'=> $data['direction'],
            'floor'=> $request['floor'],
            'departament'=> $request['departament'],
            'description'=> $request['description']
        ]);
    
        return redirect()->route('admin.suppliers.edit',$supplier)->with('info','El Proveedor se actualizo con exito');
    }

    /////////////////// - ELIMINAR PROVEEDOR - ///////////////////////////////////
    public function destroy(Supplier $supplier)
    {
        $supplier->delete();
        return redirect()->route('admin.suppliers.index')->with('eliminar','ok');
    }
}
