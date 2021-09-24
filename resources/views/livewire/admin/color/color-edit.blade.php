
<div wire:ignore.self class="modal fade" id="UpdateColorModal" tabindex="-1" aria-labelledby="CreateColorModal" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="UpdateColorModal">Actualizar el color</h5>
          <button wire:click.prevent="resetInputFields()" type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
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
              <input type="text" name="description" class="form-control" placeholder="Ingrese la descripcion del Color" wire:model="description">
  
              @error('description')
                  <span class="text-danger">{{$message}}</span>
              @enderror
          </div>
    </div>  
  
        <div class="modal-footer">
          <button wire:click.prevent="resetInputFields()" type="button" class="btn btn-secondary btn-danger" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal" wire:click.prevent="update()">Actualizar</button>
        </div> 
      </div>
    </div>
  </div> 