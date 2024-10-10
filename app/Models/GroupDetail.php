<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $id
 * @property integer $group_id
 * @property string $group_name
 * @property string $created_at
 * @property string $updated_at
 * @property Group $group
 * @property GroupMember[] $groupMembers
 */
class GroupDetail extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['group_id', 'group_name', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function group()
    {
        return $this->belongsTo('App\Models\Group');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function groupMembers()
    {
        return $this->hasMany('App\Models\GroupMember'); // Pastikan nama model dan relasi benar
    }
}
