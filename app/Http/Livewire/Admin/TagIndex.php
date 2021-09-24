<?php

namespace App\Http\Livewire\Admin;

use App\Models\Tag;
use Livewire\Component;
use Livewire\WithPagination;

class TagIndex extends Component
{
    use WithPagination;
    protected $paginationTheme = "bootstrap";

    public $search;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {

        $tags = Tag::where('name','LIKE','%'.$this->search.'%')
                    ->paginate(9);

        return view('livewire.admin.tag-index', compact('tags'));
    }
}
 