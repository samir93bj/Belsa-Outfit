@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Crear Tag</h1>
@stop

@section('content')
    <p>bienvenido al panel del administrador</p>

     {{-- Mensaje para mostrar los textos de session--}}
    @if (session('info'))
        <div class="alert alert-success">
            <strong>
                {{session('info')}}
            </strong>
        </div>
    @endif

    {{-- FORMULARIO PARA CREAR UNA CATEGORIA--}}
    <div class="card">
        <div class="card-body">
            {!! Form::open(['route' => 'admin.tags.store']) !!}

            {{-- NOMBRE DE LA CATEGORIA --}}
            <div class="form-group">
                {!! Form::label('name', 'Nombre') !!}
                {!! Form::text('name', null, ['class'=>'form-control', 'placeholder'=>'Ingrese el nombre del Tag']) !!}

                @error('name')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            
            {{-- SLUG DE LA CATEGORIA --}}
            <div class="form-group">
                {!! Form::label('slug', 'Slug') !!}
                {!! Form::text('slug', null, ['class'=>'form-control', 'placeholder'=>'Ingrese el slug del Tag','readonly']) !!}

                @error('slug')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

            {{-- STATUS DEL POST --}}
            <div class="form-group">
                <p class="font-weight-bold">Etiquetas</p>

                <label class="mr-2">
                    {!! Form::radio('status', 1, true) !!}
                    Habilitada
                </label>

                <label class="mr-2">
                    {!! Form::radio('status', 2) !!}
                    Deshabilitada
                </label>

                @error('status')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

            {{-- DESCRIPCION DEL TAG --}}
            <div class="form-group">
                {!! Form::label('Description', 'Descripcion') !!}
                {!! Form::textarea('description', null, ['class' => 'form-control', 'placeholder'=>'Ingrese la descripcion del Tag (No indispensable)']) !!}

                
                @error('description')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

            {!! Form::submit('Crear Tag', ['class' => 'btn btn-primary']) !!}
            {!! Form::close() !!}
        </div>
    </div>

@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script src="{{asset('vendor/jQuery-Plugin-stringToSlug-1.3/jquery.stringToSlug.min.js')}}">  </script>

    <script>
        $(document).ready( function() {
            $("#name").stringToSlug({
            setEvents: 'keyup keydown blur',
            getPut: '#slug',
            space: '-'
            });
        });
    </script> 
@stop 