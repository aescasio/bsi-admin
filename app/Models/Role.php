<?php

namespace App\Models;

use Laratrust\LaratrustRole;

class Role extends LaratrustRole
{
    public $table = 'roles';

    protected $fillable = ['name', 'display_name', 'description'];
}
