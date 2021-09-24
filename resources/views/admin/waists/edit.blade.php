@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <a class="btn btn-secondary btn-sm float-right px-3 mr-3" href="{{route('admin.waists.index')}}">Volver</a>
    <h1>Editar Talle </h1>
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

    <div class="card">
        <div class="card-body">
            {!! Form::model($waist, ['route' => ['admin.waists.update',$waist], 'method' => 'put']) !!}

           {{--DATOS DEL Talle--}}
        <div class="form-row">
            {{--NOMBRE DEL TALLE--}}
                <div class="form-group">
                    {!! Form::label('name', 'Nombre') !!}
                    {!! Form::text('name', null, ['class'=>'form-control', 'placeholder'=>'Ingrese el nombre del talle']) !!}

                    @error('name')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

            {{--SLUG DEL TALLE--}}
                <div class="form-group mx-3">
                    {!! Form::label('slug', 'Slug') !!}
                    {!! Form::text('slug', null, ['class'=>'form-control', 'placeholder'=>'Ingrese el Slug del talle','readonly']) !!}

                    @error('slug')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
        </div>

            {{-- STATUS DEL COLOR --}}
                <div class="form-group">
                    <p class="font-weight-bold">Estado</p>

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

            {{-- DESCRIPCION DEL COLOR --}}
            <div class="form-group">
                {!! Form::label('Description', 'Descripcion') !!}
                {!! Form::text('description', null, ['class' => 'form-control', 'placeholder'=>'Ingrese la descripcion del Color (No indispensable)']) !!}

                
                @error('description')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>     

                {!! Form::submit('Actualizar Talle', ['class'=>'btn btn-primary']) !!}

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