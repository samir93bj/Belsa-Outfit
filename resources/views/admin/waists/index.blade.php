@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')

    <h1>Lista de Talles</h1>
@stop

@section('content')
    
        @if(session()->has('message'))
            <div class="alert alert-success">{{session('info')}}</div>
        @endif
        
       {{-- Mensaje para mostrar los textos de session--}}
       @if (session('info'))
            <div class="alert alert-success">
                <strong>
                    {{session('info')}}
                </strong>
            </div>
        @endif

        @livewire('admin.waists.waist-index')
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>

 Mensaje para mostrar los textos de session
    @if (session('eliminar') == 'ok')
        <script>
            Swal.fire(
                'Borrado!',
                'El Talle fue eliminado con exito!.',
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