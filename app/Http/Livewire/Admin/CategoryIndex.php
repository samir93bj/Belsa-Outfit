<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use Livewire\Component;
use Livewire\WithPagination;

class CategoryIndex extends Component
{
    use WithPagination;
    protected $paginationTheme = "bootstrap";

    public $search;
 
    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {   
        //$categories = Category::all();
        $categories = Category::where('name','LIKE','%'.$this->search.'%')
                                ->paginate(9);
    
        return view('livewire.admin.category-index', compact('categories'));
    }
}
