<div>
    @include('livewire.admin.color.color-create')
    @include('livewire.admin.color.color-edit')
    <div class="card">

         {{--BUSCADOR--}}
         <div class="card-header">
            <input wire:model="search" id="search" class="form-control" placeholder="Ingrese el nombre del Color">
        </div>

        <div class="mt-3">
            {{--BOTON PARA CREAR TALLe--}}
            <button type="button" class="btn btn-secondary btn-sm float-right px-3 mr-3" data-toggle="modal" data-target="#CreateColorModal">
                Agregar nuevo color
            </button>

            {{--Mensaje de confirmacion--}}  
            @if(session()->has('edit'))
                <strong class="alert alert-success mt-3">{{session('info')}}</strong>
            @endif
        </div>
        
 
        @if ($colors->count())
    
            <div class="card-body">
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Color</th>
                            <th>Descripcion</th>
                            <th colspan="2"></th>        
                       </tr>
                    </thead>
     
                    <tbody>
                        @foreach ($colors as $color)

                            <tr>
                                <td>{{$color->id}}</td>
                                <td>{{$color->name}}</td>
                                <td>{{$color->description}}</td>
                        @can('admin.colors.edit')  
                               <td width="10px">
                                    {{-- <button wire:click="edit({{$color}})"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#UpdateColorModal">Editar</button> --}}
                                    <a class="btn btn-primary btn-sm" href="{{route('admin.colors.edit',$color)}}">Editar</a>
                                </td>
                        @endcan
                        @can('admin.colors.destroy')  
                                <td width="10px">
                                    <form class="form-delete" action="{{route('admin.colors.destroy', $color)}}" method="POST">
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
                {{$colors->links()}}
            </div>
 
        @else
            <div class="card-body">
                <p class="bg-danger text-white py-2 px-2 border border-gray-700 border-rounded">No existen Colores con ese nombre...</p>
            </div>
        @endif
    </div>
    
</div>
  