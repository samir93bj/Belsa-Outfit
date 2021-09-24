<div class="form-group">
    {!! Form::label('name','Nombre') !!}
    {!! Form::text('name', null , ['class'=>'form-control','placeholder'=>'Ingrese el nombre del Rol']) !!}

    @error('name')
        <small class="text-danger">{{$message}}</small>
    @enderror
</div>

<div class="form-group">
    <h2 class="h3">Lista de Permisos</h2>
    @foreach ($permissions as $permission)   
            <label class="mr-2">
                {!! Form::checkbox('permissions[]', $permission->id, null, ['class'=>'mr-1']) !!}
                {{$permission->description}}
            </label>
    @endforeach
</div>
