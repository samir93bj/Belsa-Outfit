<div>
    @include('livewire.admin.payments.payment-create')
    <div class="card">

        {{--BUSCADOR--}}
        <div class="card-header">
            <input wire:model="search" id="search" class="form-control" placeholder="Ingrese el tipo pago">
        </div> 

        <div class="mt-3">
            {{--BOTON PARA CREAR FORMAS DE PAGO--}}
            <button type="button" class="btn btn-secondary btn-sm float-right px-3 mr-3" data-toggle="modal" data-target="#CreatePaymentModal">
                Agregar forma de pago
            </button>

            {{--Mensaje de confirmacion--}}  
            @if(session()->has('edit'))
                <strong class="alert alert-success mt-3">{{session('info')}}</strong>
            @endif
        </div>

        @if ($payments->count())
    
        <div class="card-body">
            <table class="table table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Tipo</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th colspan="2"></th>        
                   </tr>
                </thead>
 
                <tbody>
                    @foreach ($payments as $payment)

                        <tr>
                            <td>{{$payment->id}}</td>
                            <td>{{$payment->type}}</td>
                            <td>{{$payment->name}}</td>
                            <td>{{$payment->description}}</td>
                   
                           <td width="10px">
                                {{-- <button wire:click="edit({{$color}})"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#UpdateColorModal">Editar</button> --}}
                                <a class="btn btn-primary btn-sm" href="{{route('admin.payments.edit',$payment)}}">Editar</a>
                            </td>
                    
                   
                            <td width="10px">
                                <form class="form-delete" action="{{route('admin.payments.destroy',$payment)}}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm" type="submit">Eliminar</button>
                                </form>
                            </td>
                   
                        </tr>
                    @endforeach 
                </tbody>
            </table>
        </div>

        <div class="card-footer">
            {{$payments->links()}}
        </div>

        @else
            <div class="card-body">
                <p class="bg-danger text-white py-2 px-2 border border-gray-700 border-rounded">No existen formas de pago con ese nombre...</p>
            </div>
        @endif
    </div>
</div>