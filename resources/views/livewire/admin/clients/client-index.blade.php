<div>
    @include('livewire.admin.clients.client-create')
    <div class="card">

        {{--BUSCADOR--}}
        <div class="card-header">
            <input wire:model="search" id="search" class="form-control" placeholder="Ingrese el nombre del Cliente">
        </div>

        <div class="mt-3">
            {{--REGISTRAR NUEVO CLIENTE--}}
            <button type="button" class="btn btn-secondary btn-sm float-right px-3 mr-3" data-toggle="modal" data-target="#CreateClientModal">
                Agregar Cliente
            </button>

             {{--Mensaje de confirmacion--}}  
            @if(session()->has('edit'))
                <strong class="alert alert-success mt-3">{{session('info')}}</strong>
            @endif
        </div>

        @if ($clients->count())
    
            <div class="card-body">
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Email</th>
                            <th>Telefono</th>
                            <th colspan="2"></th>        
                       </tr>
                    </thead>
     
                    <tbody>
                        @foreach ($clients as $client)

                            <tr>
                                <td>{{$client->id}}</td>
                                <td>{{$client->name}}</td>
                                <td>{{$client->email}}</td>
                                <td>{{$client->telephone}}</td>
                        @can('admin.clients.edit')  
                               <td width="10px">
                                    {{-- <button wire:click="edit({{$color}})"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#UpdateColorModal">Editar</button> --}}
                                    <a class="btn btn-primary btn-sm" href="{{route('admin.clients.edit',$client)}}">Editar</a>
                                </td>
                        @endcan
                        @can('admin.clients.destroy')  
                                <td width="10px">
                                    <form class="form-delete" action="{{route('admin.clients.destroy', $client)}}" method="POST">
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
                {{$clients->links()}}
            </div>
 
        @else
            <div class="card-body">
                <p class="bg-danger text-white py-2 px-2 border border-gray-700 border-rounded">No existen Clientes con ese nombre...</p>
            </div>
        @endif
    </div>
    
</div>
    </div>
</div>
