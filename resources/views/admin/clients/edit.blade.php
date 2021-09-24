@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <a class="btn btn-secondary btn-sm float-right px-3 mr-3" href="{{route('admin.clients.index')}}">Volver</a>
    <h1>Editar Proveedor</h1>
@stop

@section('content')

<p>Bienvenido al panel del administrador</p>
 
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
        {!! Form::model($client, ['route' => ['admin.clients.update',$client], 'method' => 'put']) !!}

            
            {{--NOMBRE DEL PROVEEDOR--}}
            <div class="form-group">
                {!! Form::label('name', 'Nombre') !!}
                {!! Form::text('name', null, ['class'=>'form-control', 'placeholder'=>'Nombre y Apellido']) !!}

                @error('name')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
        
        <div class="form-row">
            {{--EMAIL DEL PROVEEDOR--}}
            <div class="form-group col-md-6">
                {!! Form::label('email', 'Email') !!}
                {!! Form::email('email', null, ['class'=>'form-control', 'placeholder'=>'Ingrese el email']) !!}

                @error('email')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            
            {{--TELEFONO DEL PROVEEDOR--}}
            <div class="form-group col-md-6">
                {!! Form::label('telephone', 'Telefono') !!}
                {!! Form::text('telephone', null, ['class'=>'form-control' ,'placeholder'=>'Ingrese el telefono']) !!}

                @error('telephone')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
          </div>


        {{--PAIS DEL PROVEEDOR--}}
          <div class="form-row">
            {{--Pais--}}
            <div class="form-group col-md-4">
                {!! Form::label('country', 'Pais') !!}
                {!! Form::text('country' ,$client->address->country, ['class'=>'form-control', 'placeholder'=>'Ingrese el pais']) !!}
                
                @error('country')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

            {{--Provincia--}}
            <div class="form-group col-md-4">
                {!! Form::label('state', 'Provincia') !!}
                {!! Form::text('state' ,$client->address->state, ['class'=>'form-control', 'placeholder'=>'Ingrese la Provincia']) !!}
                
                @error('state')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

            {{--Ciudad--}}
            <div class="form-group col-md-4">
                {!! Form::label('city', 'Ciudad') !!}
                {!! Form::text('city' ,$client->address->city, ['class'=>'form-control', 'placeholder'=>'Ingrese la Cuidad']) !!}
                
                @error('city')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
        </div>

         {{--DIRECCION DEL PROVEEDOR--}}
         <div class="form-row">
            <div class="form-group col-md-8">
                  {!! Form::label('direction', 'Direccion') !!}
                  {!! Form::text('direction' ,$client->address->direction, ['class'=>'form-control', 'placeholder'=>'Ingrese la direccion']) !!}
                  
                  @error('direction')
                      <span class="text-danger">{{$message}}</span>
                  @enderror
            </div>
            <div class="form-group col-md-2">
                  {!! Form::label('floor', 'Piso') !!}
                  {!! Form::text('floor' ,$client->address->floor, ['class'=>'form-control', 'placeholder'=>'Piso']) !!}
                  
                  @error('floor')
                      <span class="text-danger">{{$message}}</span>
                  @enderror
            </div>
            <div class="form-group col-md-2">
                  {!! Form::label('departament', 'Departamento') !!}
                  {!! Form::text('departament' ,$client->address->departament, ['class'=>'form-control', 'placeholder'=>'Departamento']) !!}
                  
                  @error('departament')
                      <span class="text-danger">{{$message}}</span>
                  @enderror
            </div>
        </div>
        <div class="form-group">
            {!! Form::label('description', 'Descripcion') !!}
            {!! Form::text('description', $client->address->description, ['class'=>'form-control', 'placeholder'=>'Comentarios']) !!}

            @error('name')
                <span class="text-danger">{{$message}}</span>
            @enderror
        </div>

        {!! Form::submit('Actualizar Cliente', ['class'=>'btn btn-primary']) !!}

        {!! Form::close() !!} 
        </div>      
    </div>

@stop 

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
 
@stop