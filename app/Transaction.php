<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
    use SoftDeletes;

    protected $fillable = [
    	'travel_packages_id', 'users_id','additonal_visa','transaction_total','transaction_status'
    ];

    protected $hidden = [

    ];

    // untuk melihat transaksi detail
    public function details()
    {
        return $this->hasMany(TransactionDetail::class, 'transactions_id', 'id');
    }
    // untuk melihat travel package yang di pilih
    public function travel_package()
    {
        return $this->belongsTo(TravelPackage::class, 'travel_packages_id', 'id');
    }

    // siapa yang mendaftar
    public function user()
    {
        return $this->belongsTo(User::class,'users_id', 'id');
    }

    
}
