<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $id
 * @property integer $group_detail_id
 * @property integer $user_id
 * @property string $created_at
 * @property string $updated_at
 * @property User $user
 * @property GroupDetail $groupDetail
 */
class GroupMember extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['group_detail_id', 'user_id', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function groupDetail()
    {
        return $this->belongsTo('App\Models\GroupDetail', 'group_detail_id'); // Pastikan foreign key di sini benar
    }
}
