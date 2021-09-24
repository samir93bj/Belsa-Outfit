<?php

namespace App\Http\Livewire\Admin\Color;

use App\Models\Color;
use Livewire\Component;
use Livewire\Livewire;
use Livewire\WithPagination;
use Tests\Feature\UpdatePasswordTest;
use Illuminate\Support\Str;

class ColorIndex extends Component
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
            'name'=> 'required|unique:colors',
            'description'=>'max:45'
        ]);
        
        $color = Color::create($validateData);

        session()->flash('info','Color Agregado con exito!');
        $this->resetInputFields();
        //$this->emit('ColorAdded'); 
        
    }

    public function render()
    {
        $colors = Color::where('name','LIKE','%'.$this->search.'%')
                                ->latest('id')
                                ->paginate(9);

        return view('livewire.admin.color.color-index', compact('colors'));
    }
}
  