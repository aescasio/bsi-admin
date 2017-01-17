<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Profile
 * @package App\Models
 * @version January 6, 2017, 9:51 am PHT
 */
class Profile extends Model
{
    use SoftDeletes;

    public $table = 'users';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'email',
        'password',
        'remember_token'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'email' => 'string',
        'password' => 'string',
        'remember_token' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules_create = [
        'email' => 'required',
        'password' => 'required|confirmed|min:5',
        'password_confirmation' => 'required',
        'photo' => 'required|image|mimes:jpeg,png,jpg,gif,bmp,svg'
    ];

    public static $rules_update = [
        'email' => 'required',
        'password' => 'confirmed|min:5',
        'avatar' => 'required|image|mimes:jpeg,png,jpg,gif,bmp,svg'
    ];

    
}
