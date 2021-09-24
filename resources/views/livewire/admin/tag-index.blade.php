<div>
    <div class="card">

         {{--BUSCADOR--}}
         <div class="card-header">
            <input wire:model="search" id="search" class="form-control" placeholder="Ingrese el nombre del Tags">
        </div>
    
        @if ($tags->count())
    
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
                        @foreach ($tags as $tag)
                            <tr>
                                <td>{{$tag->id}}</td>
                                <td>{{$tag->name}}</td>

                                @if ($tag->status == 1)
                                    <td>Habilitado</td>
                                @else
                                    <td>Deshabilitado</td>
                                @endif
                                
                                @can('admin.tags.edit')
                                    <td width="10px">
                                        <a class="btn btn-primary btn-sm" href="{{route('admin.tags.edit',$tag)}}">Editar</a>
                                    </td>
                                @endcan

                                @can('admin.tags.destroy')                        
                                    <td width="10px">
                                        <form class="form-delete" action="{{route('admin.tags.destroy', $tag)}}" method="POST">
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
                {{$tags->links()}}
            </div>

        @else

            <div class="card-body">
                <p class="bg-danger text-white py-2 px-2 border border-gray-700 border-rounded">No existen Tags con ese nombre...</p>
            </div>
            
        @endif
    </div>
    
</div>
