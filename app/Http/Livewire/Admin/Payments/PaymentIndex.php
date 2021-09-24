<?php

namespace App\Http\Livewire\Admin\Payments;

use App\Models\Payment_Form;
use Livewire\Component;
use Livewire\WithPagination;

class PaymentIndex extends Component
{

    use WithPagination;
    protected $paginationTheme = "bootstrap";

    public $search;
    public $type;
    public $name;
    public $description;

    public function updatingSearch(){
        $this->resetPage(); 
    }


    public function resetInputFields(){
        $this->type= "";
        $this->name = "";
        $this->description ="";
    }

    public function store(){

        $data = $this->validate([
            'type'=>'required|unique:payment__forms',
            'name'=> 'required|unique:payment__forms',
            'description'=>'max:45'
        ]);
        
        $payment = Payment_Form::create($data);

        session()->flash('info','Medio de pago agregado con exito!');
        $this->resetInputFields(); 
        
    }

    public function render()
    {
        $payments = Payment_Form::where('type','LIKE','%'.$this->search.'%')
                            ->latest('id')
                            ->paginate(9);

        return view('livewire.admin.payments.payment-index',compact('payments'));
    }
}
 