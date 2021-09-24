@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <a class="btn btn-secondary btn-sm float-right px-3 mr-3" href="{{route('admin.suppliers.index')}}">Volver</a>
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
        {!! Form::model($supplier, ['route' => ['admin.suppliers.update',$supplier], 'method' => 'put']) !!}

            
            {{--NOMBRE DEL PROVEEDOR--}}
            <div class="form-group">
                {!! Form::label('name', 'Nombre') !!}
                {!! Form::text('name', null, ['class'=>'form-control', 'placeholder'=>'Ingrese el nombre del Proveedor']) !!}

                @error('name')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
        
        <div class="form-row">
            {{--EMAIL DEL PROVEEDOR--}}
            <div class="form-group col-md-6">
                {!! Form::label('email', 'Email') !!}
                {!! Form::email('email', null, ['class'=>'form-control', 'placeholder'=>'Ingrese el email del Proveedor']) !!}

                @error('email')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
            
            {{--TELEFONO DEL PROVEEDOR--}}
            <div class="form-group col-md-6">
                {!! Form::label('telephone', 'Telefono') !!}
                {!! Form::text('telephone', null, ['class'=>'form-control' ,'placeholder'=>'Ingrese el telefono del Proveedor']) !!}

                @error('telephone')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
          </div>

        {{--PAGINA WEB DEL PROVEEDOR--}}
            <div class="form-group">
                {!! Form::label('url', 'Pagina Web') !!}
                {!! Form::text('url', null, ['class'=>'form-control', 'placeholder'=>'Ingrese la pagina web del Proveedor']) !!}

                @error('url')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

        {{--PAIS DEL PROVEEDOR--}}
          <div class="form-row">
            {{--Pais--}}
            <div class="form-group col-md-4">
                {!! Form::label('country', 'Pais') !!}
                {!! Form::text('country' ,$supplier->address->country, ['class'=>'form-control', 'placeholder'=>'Ingrese el pais del Proveedor']) !!}
                
                @error('country')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

            {{--Provincia--}}
            <div class="form-group col-md-4">
                {!! Form::label('state', 'Provincia') !!}
                {!! Form::text('state' ,$supplier->address->state, ['class'=>'form-control', 'placeholder'=>'Ingrese la Provincia del Proveedor']) !!}
                
                @error('state')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>

            {{--Ciudad--}}
            <div class="form-group col-md-4">
                {!! Form::label('city', 'Ciudad') !!}
                {!! Form::text('city' ,$supplier->address->city, ['class'=>'form-control', 'placeholder'=>'Ingrese la Cuidad del Proveedor']) !!}
                
                @error('city')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
        </div>

         {{--DIRECCION DEL PROVEEDOR--}}
         <div class="form-row">
            <div class="form-group col-md-8">
                  {!! Form::label('direction', 'Direccion') !!}
                  {!! Form::text('direction' ,$supplier->address->direction, ['class'=>'form-control', 'placeholder'=>'Ingrese la direccion del Proveedor']) !!}
                  
                  @error('direction')
                      <span class="text-danger">{{$message}}</span>
                  @enderror
            </div>
            <div class="form-group col-md-2">
                  {!! Form::label('floor', 'Piso') !!}
                  {!! Form::text('floor' ,$supplier->address->floor, ['class'=>'form-control', 'placeholder'=>'Piso']) !!}
                  
                  @error('floor')
                      <span class="text-danger">{{$message}}</span>
                  @enderror
            </div>
            <div class="form-group col-md-2">
                  {!! Form::label('departament', 'Departamento') !!}
                  {!! Form::text('departament' ,$supplier->address->departament, ['class'=>'form-control', 'placeholder'=>'Departamento']) !!}
                  
                  @error('departament')
                      <span class="text-danger">{{$message}}</span>
                  @enderror
            </div>
        </div>

        {!! Form::submit('Actualizar Proveedor', ['class'=>'btn btn-primary']) !!}

        {!! Form::close() !!} 
        </div>      
    </div>

@stop 

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
 
@stop