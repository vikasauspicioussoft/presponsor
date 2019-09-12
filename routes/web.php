<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Goutte\Client;
use GuzzleHttp\Client as GuzzleClient;
use App\Yelp_address;

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::prefix('admin')->group(function () {
	Route::get('/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login'); 
	Route::post('/login', 'Auth\AdminLoginController@login');
	Route::get('/dashboard', 'Admin\AdminController@dashboard')->name('admin.dashboard');

	Route::resource('/teams', 'Admin\TeamController');
    Route::get('teams/{id}/delete', ['as' => 'teams.delete', 'uses' => 'Admin\TeamController@destroy']);
    Route::get('teams/{id}/show', ['as' => 'teams.show', 'uses' => 'Admin\TeamController@show']);
   
    // for editing form package
    Route::get('/editPackage/{id}', 'Admin\TeamController@editPackage');
    Route::post('/editPackage/{id}/update', 'Admin\TeamController@editPackageUpdate');

    // for crawling
     Route::get('/tripadvisor_crawling', 'Admin\TeamController@tripadvisor_crawling');


    // for new form
    	//Route::resource('/teams1', 'Admin\TeamController');
    Route::resource('/sponsors', 'Admin\SponsorController');
     // for all sponsors
    Route::get('sponsors/{id}/show', ['as' => 'sponsors.show', 'uses' => 'Admin\SponsorController@show']);

	Route::get('sponsors/{id}/delete', ['as' => 'sponsors.delete', 'uses' => 'Admin\SponsorController@destroy']);

    // all sponsors with zipcode

    Route::get('/allSponsors/{teamStrength}/{zipcode}', 'Admin\SponsorController@allSponsors');

    // for packages.

    Route::resource('/package', 'PackageController');

    Route::get('package/{id}/delete', ['as' => 'package.delete', 'uses' => 'PackageController@destroy']);

});	

Route::get('/sendEmail', 'Admin\SponsorController@sendEmail');
Route::get('/domainName', 'ModelnameController@domainName');
Route::get('/compare/{add}',  'Admin\TeamController@compare');
Route::get('/calDis/{address}', 'Admin\TeamController@calDistance');
Route::get('/hdtuto', function() {
    $crawler = Goutte::request('GET', 'https://activewealth.com/about-us/');
    $crawler->filter('a')->each(function ($node) {
    dump($node->text());
    });

});
Route::get('/crawler', 'ModelnameController@index');
Route::get('/fetch_yelp/{location}', 'ModelnameController@fetch_yelp');
Route::get('/fetch_count/{location}', 'ModelnameController@fetch_count');

/* test the email template */

Route::get('/sendMail2', 'ModelnameController@sendMail2');



Route::get('/test', function(){

	return view('test');

});

// for the stripe payment
Route::get("addmoney/stripe", array("as" => "addmoney.paywithstripe","uses" => "AddMoneyController@payWithStripe"));
Route::post("addmoney/stripe", array("as" => "addmoney.stripe","uses" => "AddMoneyController@postPaymentWithStripe"));
