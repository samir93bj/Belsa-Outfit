<div>
    <div class="card">

         {{--BUSCADOR--}}
         <div class="card-header">
            <input wire:model="search" id="search" class="form-control" placeholder="Ingrese el nombre o un correo de usuario">
        </div>
    
        @if ($categories->count())
    
            <div class="card-body">
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Estado</th>
                            <th colspan="2"></th>        
                       </tr>
                    </thead>
     
                    <tbody>
                        @foreach ($categories as $category)
                            <tr>
                                <td>{{$category->id}}</td>
                                <td>{{$category->name}}</td>
                                
                                @if ($category->status == 1)
                                    <td>Habilitado</td>
                                @else
                                    <td>Deshabilitado</td>
                                @endif
                            @can('admin.categories.edit')
                                <td width="10px">
                                    <a class="btn btn-primary btn-sm" href="{{route('admin.categories.edit',$category)}}">Editar</a>
                                </td>
                            @endcan  
                            @can('admin.categories.destroy')    
                                <td width="10px">
                                    <form class="form-delete" action="{{route('admin.categories.destroy', $category)}}" method="POST">
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
                {{$categories->links()}}
            </div>

        @else
            <div class="card-body">
                <p class="bg-danger text-white py-2 px-2 border border-gray-700 border-rounded">No existen Post con ese nombre...</p>
            </div>
        @endif
    </div>
    
</div>
