<?php

namespace App\Http\Livewire\Admin\Waists;

use App\Models\Waist;
use Livewire\Component;
use Livewire\WithPagination;

class WaistIndex extends Component
{
    public $search;
    public $name;
    public $description;

    use WithPagination;
    protected $paginationTheme = "bootstrap";

    public function updatingSearch(){
        $this->resetPage();
    }

    public function resetInputFields(){
        $this->name = "";
        $this->description ="";
    }

    public function store(){

        $validateData = $this->validate([
            'name'=> 'required|unique:waists',
            'description'=>'max:45'
        ]);
        
        Waist::create($validateData);

        session()->flash('info','Talle Agregado con exito!');
        $this->resetInputFields();
        //$this->emit('ColorAdded'); 
        
    }

    public function render()
    {
        $waists = Waist::where('name','LIKE','%'.$this->search.'%')
                                ->latest('id')
                                ->paginate(9);

        return view('livewire.admin.waists.waist-index', compact('waists'));
    }
} 
   