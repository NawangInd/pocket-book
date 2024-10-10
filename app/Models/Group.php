<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $id
 * @property integer $materi_id
 * @property string $judul
 * @property integer $total_members
 * @property string $created_at
 * @property string $updated_at
 * @property Materi $materi
 * @property GroupDetail[] $groupDetails
 */
class Group extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'group';

    /**
     * @var array
     */
    protected $fillable = ['materi_id', 'judul', 'total_members', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function materi()
    {
        return $this->belongsTo('App\Models\Materi');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function groupDetails()
    {
        return $this->hasMany('App\Models\GroupDetail');
    }
}
