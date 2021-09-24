<div>
    @include('livewire.admin.waists.waist-create')
    <div class="card">

         {{--BUSCADOR--}}
         <div class="card-header">
            <input wire:model="search" id="search" class="form-control" placeholder="Ingrese el nombre del Talle">
        </div>

        <div class="mt-3">
            {{--BOTON PARA CREAR TALLe--}}
            <button type="button" class="btn btn-secondary btn-sm float-right px-3 mr-3" data-toggle="modal" data-target="#CreateWaistModal">
                Agregar nuevo Talle
            </button>

            {{--Mensaje de confirmacion--}}  
            @if(session()->has('edit'))
                <strong class="alert alert-success mt-3">{{session('info')}}</strong>
            @endif
        </div>
         
 
        @if ($waists->count())
    
            <div class="card-body">
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Talle</th>
                            <th>Descripcion</th>
                            <th colspan="2"></th>        
                       </tr>
                    </thead>
     
                    <tbody>
                        @foreach ($waists as $waist)

                            <tr>
                                <td>{{$waist->id}}</td>
                                <td>{{$waist->name}}</td>
                                <td>{{$waist->description}}</td>
                            @can('admin.waists.edit')     
                                <td width="10px">
                                    {{-- <button wire:click="edit({{$color}})"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#UpdateColorModal">Editar</button> --}}
                                    <a class="btn btn-primary btn-sm" href="{{route('admin.waists.edit',$waist)}}">Editar</a>
                                </td>
                            @endcan
                            @can('admin.waists.destroy')  
                                <td width="10px">
                                    <form class="form-delete" action="{{route('admin.waists.destroy', $waist)}}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger btn-sm" type="submit">Eliminar</button>
                                    </form>
                                </td>
                            @endcan
                            </tr>
                        @endforeach 
                    </tbody>
                </table>
            </div>
 
            <div class="card-footer">
                {{$waists->links()}} 
            </div>
 
        @else
            <div class="card-body">
                <p class="bg-danger text-white py-2 px-2 border border-gray-700 border-rounded">No existen Talles con ese nombre...</p>
            </div>
        @endif
    </div>
    
</div>
  