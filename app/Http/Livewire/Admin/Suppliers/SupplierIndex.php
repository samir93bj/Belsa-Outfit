<?php

namespace App\Http\Livewire\Admin\Suppliers;

use App\Models\Supplier;
use Livewire\Component;
use Livewire\WithPagination;

class SupplierIndex extends Component
{
    public $search;
    public $name;
    public $email;
    public $url;
    public $telephone;
    public $country;
    public $state;
    public $city;
    public $direction;
    public $floor;
    public $departament;
    public $description;

    use WithPagination;
    protected $paginationTheme = "bootstrap";

    public function updatingSearch(){
        $this->resetPage();
    }

       //RESETEAMOS LOS CAMPOS
       public function resetInputFields(){
        $this->name = "";
        $this->email ="";
        $this->url ="";
        $this->telephone ="";
        $this->country ="";
        $this->state ="";
        $this->city ="";
        $this->direction ="";
        $this->floor ="";
        $this->departament ="";
        $this->description ="";
    }

    //ALMACENAR LOS DATOS RECIBIDOS
    public function store(){

        $data = $this->validate([
            'name' => 'required|unique:clients',
            'email' => 'required|unique:clients',
            'url' => 'required',
            'telephone' => 'required',
            'country' => 'required',
            'state'  => 'required',
            'city'  => 'required',
            'direction'  => 'required',
            'floor' => '',
            'departament' => '',
            'description' => '',
        ]);
    
    $supplier = Supplier::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'url' => $data['url'],
            'telephone' => $data['telephone']
        ]);

    $supplier->address()->create([ 
        'country'=> $data['country'],
        'state'=> $data['state'],
        'city'=> $data['city'],
        'direction'=> $data['direction'],
        'floor'=> $data['floor'],
        'departament'=> $data['departament'],
        'description'=> $data['description']
    ]);

    session()->flash('info','Proveedor Agregado con exito!');
    $this->resetInputFields();
}

    public function render()
    {
        $suppliers = Supplier::where('name','LIKE','%'.$this->search.'%')
                                ->latest('id')
                                ->paginate(9);

        return view('livewire.admin.suppliers.supplier-index',compact('suppliers'));
    }
}
 