<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Modal\Sponsor;
use App\Http\Requests\TeamFormRequest;
use Log;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderShipped;
use Monolog\Logger;
use App\yelp_test;
use App\Yelp_address;

class SponsorController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Sponsor::get();
		// $data = array(
		// 	'title'=>'Sponsors',
		// 	'sponsors'=>$sponsors
		// );
		return view('admin.sponsors.index')->with('data',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function sendEmail(Request $request)
    {

      // echo 34;

      $data1 = [
           'data' => "sdsd",
           'password' => "aaaaa"
       ];

      Mail::send(['text'=>'mail'], $data1, function($message){

        $message->to('vikas.auspicioussoft@gmail.com', 'to fumes')->subject('test email');
        $message->from('bitfumes@gmail.com', 'bitfumes');


      });
      /*$address = "abc";

      $trip_email= "dg@gmail.com";


      Log::emergency('The address is!'.$address ."and the mail is ".$trip_email);*/
      //Log::emergency('The system is down!');
    }

      public function allSponsors(Request $request, $teamStrength, $zipcode)
      {
        //$members = 454;
        // $sponsors_data = Yelp_address::where('location', $zipcode)->get();
        // $sponsors_data_count = Yelp_address::where('location', $zipcode)->count();
        $count =1;
        if($teamStrength<500)
        {
          $zip_array =array();
          while($count<=40)
          {
             $sponsors_data = Yelp_address::where('location', $zipcode)->get();
             $sponsors_data_counts = Yelp_address::where('location', $zipcode)->count();
             $count +=$sponsors_data_counts;
             array_push($zip_array, $zipcode);
             $zipcode++;
             $count++;
          }
          $sponser = Yelp_address::whereIn('location',  $zip_array)->get();
          return view('admin.sponsors.mailing')->with('data', $sponser);
      }
      else
      {
         $zip_array =array();
          while($count<=70)
          {
             $sponsors_data = Yelp_address::where('location', $zipcode)->get();
             $sponsors_data_counts = Yelp_address::where('location', $zipcode)->count();
             $count +=$sponsors_data_counts;
             array_push($zip_array, $zipcode);
             $zipcode++;
             $count++;
          }
          $sponser = Yelp_address::whereIn('location',  $zip_array)->get();
          return view('admin.sponsors.mailing')->with('data', $sponser);
      }
    }
    public function create()
    {
        return view('admin.sponsors.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		// $sponsorData = request()->all();
		// $sponsor = Sponsor::create($sponsorData);
      $address = $request->input('yelp_address');
      $trip_email = $request->trip_advisor_email;
      $websiteEmail = $request->website_email;

      $sponsor_name = $request->sponsor_name;
 
      // $prepAddr = str_replace(' ','+',$address);

      // $geocode=file_get_contents("https://maps.googleapis.com/maps/api/geocode/json?address='.$prepAddr.'&sensor=false&key=AIzaSyD5-X3r6dVn8D_sSNKiuAUjkJVjxumHXtE");

      // $output= json_decode($geocode);
        // echo "<pre>";

        // var_dump($output);
        // die();
           $sponsor = new Sponsor;
           $sponsor->yelp_address = $request->yelp_address;
           // $sponsor->lat = $output->{'results'}[0]->{'geometry'}->{'location'}->{'lat'};
           // $sponsor->lng = $output->{'results'}[0]->{'geometry'}->{'location'}->{'lng'};
           $sponsor->sponsor_name = $request->sponsor_name;
           $sponsor->category = $request->category;
           $sponsor->yelp_website = $request->yelp_website;
           $sponsor->trip_advisor_email = $request->trip_advisor_email;
           $sponsor->yellow_pages_email = $request->yellow_pages_email;
           $sponsor->website_email = $request->website_email;
           $sponsor->whoIs_email = $request->whoIs_email;
           $sponsor->manually_email = $request->manually_email;
           $sponsor->team_id = $request->team_id;
           $sponsor->unsubscribe_date = $request->unsubscribe_date;
           $sponsor->sponsorship_tier = $request->sponsorship_tier;
           $sponsor->sponsorship_amount = $request->sponsorship_amount;
           $sponsor->sponsorship_date = $request->sponsorship_date;
           $sponsor->save();

         // Mail::to($trip_email)->send(new OrderShipped());

           $data1 = [
           'sponsor_name' => $sponsor_name,
           'contact_email' =>$websiteEmail
       ];

      Mail::send(['text'=>'mail'], $data1, function($message){

        $message->to('fnvg@gmail.com', 'to fumes')->subject('test email');
        $message->from('bitfumes@gmail.com', 'bitfumes');
      });

	   	// Log::useFiles(storage_path().'/logs/mycustom1.log');
		  // Log::info('Create Sponsor:');

        // Log::emergency('We have some details of the sponsors and The address is!'.$address ." and the mail is ".$trip_email);

      Log::channel('single')->info("the adress is ". $address ." the name is ".$sponsor_name);

		return back()->with('success', 'Sponsor created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
       $sponsor = Sponsor::find($id);

      return view('admin.sponsors.show')->with('data', $sponsor);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $sponsor = Sponsor::find($id);

        return view('admin.sponsors.edit')->with('sponsor', $sponsor);


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      
      $sponsor = Sponsor::find($id);

       $sponsor->yelp_address = $request->yelp_address;
           // $sponsor->lat = $output->{'results'}[0]->{'geometry'}->{'location'}->{'lat'};
           // $sponsor->lng = $output->{'results'}[0]->{'geometry'}->{'location'}->{'lng'};
           $sponsor->sponsor_name = $request->sponsor_name;
           $sponsor->category = $request->category;
           $sponsor->yelp_website = $request->yelp_website;
           $sponsor->trip_advisor_email = $request->trip_advisor_email;
           $sponsor->yellow_pages_email = $request->yellow_pages_email;
           $sponsor->website_email = $request->website_email;
           $sponsor->whoIs_email = $request->whoIs_email;
           $sponsor->manually_email = $request->manually_email;
           $sponsor->team_id = $request->team_id;
           $sponsor->unsubscribe_date = $request->unsubscribe_date;
           $sponsor->sponsorship_tier = $request->sponsorship_tier;
           $sponsor->sponsorship_amount = $request->sponsorship_amount;
           $sponsor->sponsorship_date = $request->sponsorship_date;
           $sponsor->save();
           return back()->with('success', 'Sponsors has been updated successfully.');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
		    $sponsor = Sponsor::find($id);
        $sponsor->delete();
        return redirect('admin/sponsors/')->with('success', 'Deletion has been done successfully');

    }
}
