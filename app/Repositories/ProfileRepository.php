<?php

namespace App\Repositories;

use App\Models\User;
use InfyOm\Generator\Common\BaseRepository;

class ProfileRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'email',
        'avatar'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Profile::class;
    }


}
