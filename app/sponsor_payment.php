<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sponsor_payment extends Model
{
    

	protected $table = 'sponsor_payment';

	 public $timestamps = false;

      protected $fillable = ['card_number', 'cvv', 'expiry_month', 'expiry_year', 'amount', 'email'];

}
