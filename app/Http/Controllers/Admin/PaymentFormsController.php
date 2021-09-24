<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Payment_Form;
use Illuminate\Http\Request;

class PaymentFormsController extends Controller
{
    
    public function index()
    {
        return view('admin.payments.index');
    }

    
    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

  
    public function show(Payment_Form $Payment_Form)
    {
        //
    }

    
    /////////////////// - RENDERIZAR VISTA PARA ACTUALZIAR FORMA DE PAGO - ///////////////////////////////////
    public function edit(Payment_Form $Payment_Form)
    {
        //
    }

    
    /////////////////// - ACTUALIZAR FORMA DE PAGO - ///////////////////////////////////
    public function update(Request $request, Payment_Form $Payment_Form)
    {
        //
    }

   
    /////////////////// - ELIMINAR FORMA DE PAGO - ///////////////////////////////////
    public function destroy(Payment_Form $Payment_Form)
    {
        $Payment_Form->delete();
        return redirect()->route('admin.payments.index')->with('eliminar','ok');
    }
}
 