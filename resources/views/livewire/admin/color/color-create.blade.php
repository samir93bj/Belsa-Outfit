<div wire:ignore.self class="modal fade" id="CreateColorModal" tabindex="-1" aria-labelledby="CreateColorModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="CreateColorModal">Crear nuevo color</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

         {{--Mensaje de confirmacion--}}  
        @if(session()->has('info'))
          <strong class="alert alert-success mt-3">{{session('info')}}</strong>
        @endif

      <div class="modal-body">    
        <div class="form-group">
          <label for="name">Nombre</label>
          <input type="text" name="name" class="form-control" placeholder="Ingrese el nombre del Color" wire:model="name">

          @error('name')
              <span class="text-danger">{{$message}}</span>
          @enderror
        </div>
 
        <div class="form-group">
            <label for="name">Descripcion</label>
            <input type="text" name="description" class="form-control" placeholder="Ingrese la Descripcion del Color" wire:model="description">

            @error('description')
                <span class="text-danger">{{$message}}</span>
            @enderror
        </div>
  </div>

      <div class="modal-footer">
        <button wire:click.prevent="resetInputFields()" type="button" class="btn btn-secondary btn-danger" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary"  wire:click.prevent="store()">Guardar</button>
      </div> 
    </div>
  </div>
</div> 
