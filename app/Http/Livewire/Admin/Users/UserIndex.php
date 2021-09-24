<?php

namespace App\Http\Livewire\Admin\Users;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class UserIndex extends Component
{
    public $search;
    use WithPagination;

    protected $paginationTheme = "bootstrap";

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        $users = User::where('name','LIKE','%'.$this->search.'%')
                        ->orwhere('email','LIKE','%'.$this->search.'%')
                        ->paginate(8);

        return view('livewire.admin.users.user-index', compact('users'));
    }
}
