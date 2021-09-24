@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Lista de Formas de Pago</h1>
@stop
 
@section('content')

    {{-- Mensaje para mostrar los textos de session--}}
    @if (session('info'))
        <div class="alert alert-success">
            <strong>
                {{session('info')}}
            </strong>
        </div>
    @endif

        @livewire('admin.payments.payment-index')
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop
 
@section('js')
    <script> console.log('Hi!'); </script>

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>

 {{-- Mensaje para mostrar los textos de session--}}
    @if (session('eliminar') == 'ok')
        <script>
            Swal.fire(
                'Borrado!',
                'La forma de pago fue eliminada con exito!.',
                'success'
            )
        </script> 
    @endif

<script>
    $('.form-delete').submit(function(e){
        e.preventDefault();

        Swal.fire({
            title: 'Estas seguro?',
            text: "No podrás revertir esto!",
            icon: 'error',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, bórralo!'
        }).then((result) => {
            if (result.isConfirmed) {
            this.submit();
            }
        })

    });
</script>
@stop