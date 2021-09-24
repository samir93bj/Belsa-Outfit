<?php

namespace Database\Seeders;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    
    public function run()
    {
        $role1 = Role::create(['name' => 'Admin']);
        $role2 = Role::create(['name' => 'editor']);
        $role3 = Role::create(['name' => 'user']);

        // Permission::create(['name' => 'admin.home'])->assignRole($role1); //Asignamos 1 rol a 1 permiso
        Permission::create(['name' => 'admin.home','description'=>'Ver el Panel de Control'])->syncRoles([$role1, $role2, $role3]);

        //MODIFICAR ROLES 
        Permission::create(['name' => 'admin.roles.index','description'=>'Listado de Roles'])->assignRole($role1);
        Permission::create(['name' => 'admin.roles.create','description'=>'Crear Role'])->assignRole($role1);
        Permission::create(['name' => 'admin.roles.edit','description'=>'Editar Role'])->assignRole($role1);
        Permission::create(['name' => 'admin.roles.destroy','description'=>'Eliminar Role'])->assignRole($role1);


        //MODIFICAR USUARIOS 
        Permission::create(['name' => 'admin.users.index','description'=>'Listado de Usuarios'])->assignRole($role1);
        Permission::create(['name' => 'admin.users.create','description'=>'Crear Usuario'])->assignRole($role1);
        Permission::create(['name' => 'admin.users.edit','description'=>'Editar Usuario'])->assignRole($role1);
        Permission::create(['name' => 'admin.users.destroy','description'=>'Eliminar Usuario'])->assignRole($role1);

        //ROLES PARA CATEGORIAS
        Permission::create(['name' => 'admin.categories.index','description'=>'Listado de Categorias'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.categories.create','description'=>'Crear Categoria'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.categories.edit','description'=>'Editar Categoria'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.categories.destroy','description'=>'Eliminar Categoria'])->syncRoles([$role1, $role2]);

        //ROLES PARA TAGS
        Permission::create(['name' => 'admin.tags.index','description'=>'Listado de Tags'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.tags.create','description'=>'Crear Tag'])->syncRoles([$role1, $role2,$role3]);;
        Permission::create(['name' => 'admin.tags.edit','description'=>'Editar Tag'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.tags.destroy','description'=>'Eliminar Tag'])->syncRoles([$role1, $role2]);

        //ROLES PARA COLORES
        Permission::create(['name' => 'admin.colors.index','description'=>'Listado de Colores'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.colors.create','description'=>'Crear Color'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.colors.edit','description'=>'Editar Color'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.colors.destroy','description'=>'Eliminar Color'])->syncRoles([$role1, $role2]);

        //ROLES PARA TALLES
        Permission::create(['name' => 'admin.waists.index','description'=>'Listado de Talles'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.waists.create','description'=>'Crear Talle'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.waists.edit','description'=>'Editar Talle'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.waists.destroy','description'=>'Eliminar Talle'])->syncRoles([$role1, $role2]);

        //ROLES PARA PROVEEDORES
        Permission::create(['name' => 'admin.suppliers.index','description'=>'Listado de Proveedores'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.suppliers.create','description'=>'Crear Proveedor'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.suppliers.edit','description'=>'Editar Proveedor'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.suppliers.destroy','description'=>'Eliminar Proveedor'])->syncRoles([$role1, $role2]);

        //ROLES PARA PROVEEDORES
        Permission::create(['name' => 'admin.clients.index','description'=>'Listado de Proveedores'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.clients.create','description'=>'Crear Proveedor'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.clients.edit','description'=>'Editar Proveedor'])->syncRoles([$role1, $role2,$role3]);
        Permission::create(['name' => 'admin.clients.destroy','description'=>'Eliminar Proveedor'])->syncRoles([$role1, $role2]);
    }
}
 