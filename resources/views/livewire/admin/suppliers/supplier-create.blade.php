<div wire:ignore.self class="modal fade" id="CreateSupplierModal" tabindex="-1" aria-labelledby="CreateSupplierModal" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="CreateSupplierModal">Registrar Nuevo Proveedor</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
  
           {{--Mensaje de confirmacion--}}  
          @if(session()->has('info'))
            <strong class="alert alert-success mt-3">{{session('info')}}</strong>
          @endif
   
    <div class="modal-body"> 
        <div class="container-fluid">

            {{--NOMBRE DEL PROVEEDOR--}}  
            <div class="form-group">
                <label for="name">Nombre y Apellido</label>
                <input type="text" name="name" class="form-control" placeholder="Nombre y Apellido" wire:model.defer="name">
    
                @error('name')
                    <span class="text-danger">{{$message}}</span>
                @enderror
            </div>
    
            <div class="form-row">
                {{--EMAIL DEL PROVEEDOR--}}
                <div class="form-group col-md-6">
                    <label for="email">Email: </label>
                    <input type="email" name="email" class="form-control" placeholder="Ingrese el Email" wire:model.defer="email">

                    @error('email')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                
                {{--TELEFONO DEL PROVEEDOR--}}
                <div class="form-group col-md-6">
                    <label for="telephone">Telefono: </label>
                    <input type="text" name="telephone" class="form-control" placeholder="Ingrese el Telefono" wire:model.defer="telephone">

                    @error('telephone')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
            
                {{--URL DEL PROVEEDOR--}}  
                <div class="form-group col-md-12">
                    <label for="url">Pagina WEB</label>
                    <input type="text" name="url" class="form-control" placeholder="Pagina Web" wire:model.defer="url">
        
                    @error('url')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>  

                {{--PAIS DEL PROVEEDOR--}}
                <div class="form-row">
                    {{--Pais--}}
                    <div class="form-group col-md-4">
                        <label for="country">Pais: </label>
                        <input type="text" name="country" class="form-control" placeholder="Pais" wire:model.defer="country">
                        
                        @error('country')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
        
                    {{--Provincia--}}
                    <div class="form-group col-md-4">
                        <label for="state">Provincia: </label>
                        <input type="text" name="state" class="form-control" placeholder="Provincia" wire:model.defer="state">
                        
                        @error('state')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
        
                    {{--Ciudad--}}
                    <div class="form-group col-md-4">
                        <label for="city">Ciudad: </label>
                        <input type="text" name="city" class="form-control" placeholder="Ciudad" wire:model.defer="city">
                        
                        @error('city')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                </div>
                {{--DIRECCION DEL PROVEEDOR--}}
         
                <div class="form-group col-md-12">
                        <label for="direction">Direccion: </label>
                        <input type="text" name="direction" class="form-control" placeholder="Direccion" wire:model.defer="direction">
                    
                    @error('direction')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
        
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="floor">Piso: </label>
                        <input type="text" name="floor" class="form-control" placeholder="Piso" wire:model.defer="floor">
                        
                        @error('floor')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group col-md-4">
                        <label for="departament">Departamento: </label>
                        <input type="text" name="departament" class="form-control" placeholder="Departamento" wire:model.defer="departament">
                        
                        @error('departament')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                </div>
                 {{--COMENTARIOS DE LA DIRECCION--}}  
                 <div class="form-group col-md-12">
                    <label for="description">Descripcion:</label>
                    <input type="text" name="description" class="form-control" placeholder="Comentarios" wire:model.defer="description">
        
                    @error('description')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>  
            </div> 

        </div>
    </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary btn-danger" wire:click.prevent="resetInputFields()" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-primary"  wire:click.prevent="store()">Guardar</button>
        </div> 
      </div>
    </div>
  </div> 