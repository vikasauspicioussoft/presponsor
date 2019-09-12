<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Team;
use App\AddMember;
use App\Http\Requests\TeamFormRequest;
use App\SponsorPackageOption;
use App\Modal\Sponsor;
use DB;
// use Illuminate\Support\Facades\Mail;
//use Illuminate\Support\Facades\Mail;
use App\Mail\OrderShipped;
use App\Yelp_address;
use Response;
use App\Crawl;
use App\yelp_url;

use App\trip_url;
use Goutte\Client;
use Symfony\Component\DomCrawler\Crawler;
use App\Mail\sponsor_email;
use Mail;

class TeamController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $teams = Team::get();
    		$data = array(
    			'title'=>'Teams',
    			'teams'=>$teams
    		);
	     	return view('teams.index')->with('data',$data);
    }

    /* for loading the view of the team  */

    public function create(Request $request)
    {

      $spo = SponsorPackageOption::get();
       return view('teams.create', ['spo'=>$spo]);
      // return view('teams.create')->with('spo', $spo);
    }

   /* For storing the team data */

    public function store(Request $request)
    {
         $validatedData = $request->validate([
          'address' => 'required',
          'phone' => 'required',
          'email' => 'required|email',
          'first_name' => 'required',
          'last_name' => 'required',
          'member_participants' => 'required|numeric',
        ]); 
        // echo "<pre>";
        // print_r($_POST);
        // die();
        $add = $request->input('address');
        $members = $request->member_participants;
        $team = new Team;
        $team->grouptype = $request->grouptype;
        $team->other_main_activity = $request->other_main_activity;
        $team->group_name = $request->group_name;
        $team->main_activity = $request->main_activity;
        $team->email = $request->email_org;
        $team->address = $request->address;
        $team->member_participants = $request->member_participants;
        $team->first_name = $request->first_name;
        $team->last_name = $request->last_name;
        $team->mail_add_groupname = $request->email;
        $team->phone = $request->phone;
        $team->website_fb_page = $request->website_fb_page;
        $team->plan_name = $request->data;
        $team->save();
        $LastInsertId = $team->id;

        /* here location is a zipcode we are searching */
        $location= $add;

        /* yelp request for getting the businesses data */
    
        /* for storing the businesses data in the database */
        $count=0;
        if($members<500)
    					{
          $array_content = array();
        while($count<=40)
        {
          array_push($array_content,  $location);
          $yelp_address = Yelp_address::where('location',  $location)->get();
           $yelp_address_count = Yelp_address::where('location',  $location)->count();
           if($yelp_address_count>0)
           {
            //array_push($array_content,  $l);
            while($count<40)
            {
            // echo "fetch the content";
             $yelp_address = Yelp_address::where('location',  $location)->get();
             $yelp_address_count = Yelp_address::where('location',  $location)->count();

             $count +=$yelp_address_count;
              //$count++;
             array_push($array_content,  $location);

             $location++;
            }
           
            $sponser = Yelp_address::whereIn('location', $array_content)->get();
            
              foreach($sponser as $emails)
              {
                $sponser_email = $emails->email;
                if(!empty($sponser_email))
                {
                  Mail::to($sponser_email)->send(new sponsor_email());
                }
              }
            
            return view('admin.sponsors.mailing')->with('data', $sponser);

           }
           else
          {
          $loop_data = $this->fetch_yelp_data($location);

          // testing
           foreach($loop_data as $city)
                {
                         $yelp_address = new Yelp_address;
                         $business_name = $city->name;
                         $phone = $city->phone;
                        // echo $city->alias;
                         $city1 = $city->location->city;
                         $address = $city->location->address1;
                        // $zipcode = $city->location->zip_code->count();
                         $lat= $city->coordinates->latitude;
                         $lng= $city->coordinates->longitude;
                         $yelp_address->location = $location;
                         $yelp_address->city = $city1 ;
                         $yelp_address->business_name =$business_name;
                         $yelp_address->latitude =$lat;
                         $yelp_address->longitude =$lng;
                         $yelp_address->phone = $phone ;
                         $yelp_address->address = $address ;
                         $yelp_address->save();
                }    
                $second_count = count($loop_data);
                $count += $second_count ;
                $location++;
                $count++;
        }
      }
    
        $sponser = Yelp_address::whereIn('location', $array_content)->get();
        return view('admin.sponsors.mailing')->with('data', $sponser);
      }
      else
      {    
          $array_content = array();
          while($count<=70)
            {
              /* here we are storing the zipcode in the array one after another */
              array_push($array_content,  $location);

           $yelp_address = Yelp_address::where('location',  $location)->get();
           $yelp_address_count = Yelp_address::where('location',  $location)->count();

           if($yelp_address_count>0)
           {
            //array_push($array_content,  $l);
            while($count<70)
            {
            // echo "fetch the content";
             $yelp_address = Yelp_address::where('location',  $location)->get();
             $yelp_address_count = Yelp_address::where('location',  $location)->count();

             $count +=$yelp_address_count;
              //$count++;
             array_push($array_content,  $location);

             $location++;
            }
           
            $sponser = Yelp_address::whereIn('location', $array_content)->get();
            return view('admin.sponsors.mailing')->with('data', $sponser);

           }
           else
          {

              $loop_data = $this->fetch_yelp_data($location);
             
                 foreach($loop_data as $city)
                      {
                               $yelp_address = new Yelp_address;
                               $business_name = $city->name;
                               $phone = $city->phone;
                                 $address = $city->location->address1;
                              // echo $city->alias;
                               $city1 = $city->location->city;
                              // $zipcode = $city->location->zip_code->count();
                               $lat= $city->coordinates->latitude;
                               $lng= $city->coordinates->longitude;
                               $yelp_address->location = $location;
                               $yelp_address->city = $city1 ;
                               $yelp_address->business_name =$business_name;
                               $yelp_address->latitude =$lat;
                               $yelp_address->longitude =$lng;
                               $yelp_address->phone = $phone ;
                               $yelp_address->address = $address ;
                               $yelp_address->save();
                      } 
                       
                   $second_count = count($loop_data);
                   $count += $second_count ;
                   $location++;
                   //$count++;
                    // $location++;
                    // $count++;
            }
          }

            /* WHEREIN read data from the array */
             $sponser = Yelp_address::whereIn('location', $array_content)->get();
             return view('admin.sponsors.mailing')->with('data', $sponser);
      }

      /* for adding the additional teams member */

        $team_member = new AddMember;
        $f = array();
        foreach ($request->member_firstname as $member_firstnames) {
                array_push($f, $member_firstnames);
        }
        $team_member->firstname = json_encode($f);

       $l = array();

      foreach ($request->member_lastname as $member_lastnames) {

        array_push($l, $member_lastnames);
                
        }
       $team_member->lastname = json_encode($l);

       $e = array();

      foreach ($request->member_email as $member_emails) {
                    array_push($e, $member_emails);                  
        }
        $team_member->email = json_encode($e);
        $team_member->teams_id = $LastInsertId;
        $team_member->save();
        //return redirect()->route('teams.compare',['add'=>$add]);
    }

      /* for yelp request */

    public function fetch_yelp_data($location)

    {
        // for getting the api key and and the url
        $yelp_urls = yelp_url::first();
        $url_content =$yelp_urls->url;
        $key_content =$yelp_urls->key;
        $request_url = $url_content.'?'.'location'.'='.$location;
        $api_key =$key_content;
        // Send Yelp API call
        $ch = curl_init($request_url);
        curl_setopt($ch, CURLOPT_HTTPHEADER,
            array(
                "Content-Type: application/json",
                "Authorization: Bearer ".$api_key
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        $data = curl_exec($ch); // Yelp response
        curl_close($ch);
        // Handle Yelp response data
        $response = json_decode($data);
        $all_content =$response->businesses;
        return $all_content;

    }

    /* for showing the team listing */

    public function show($id)
    {
        $teams = Team::find($id);
        return view('teams.show')->with('data',$teams);
    }

    /* for editing the team */
    public function edit($id)
    {
        // echo $id;
        $team_data = Team::find($id);
        return view('teams.edit')->with('team_data', $team_data);
    }

    public function update(Request $request, $id)
    {
        // print_r($request->all());
        // die;
       $team_data = Team::find($id);       
       $team_data->group_name = $request->group_name;
       $team_data->address = $request->address;
       $team_data->phone = $request->phone;
       $team_data->email = $request->email;
       $team_data->main_activity = $request->main_activity;
       $team_data->first_name = $request->first_name;
       $team_data->last_name = $request->last_name;
       $team_data->member_participants = $request->member_participants;
       $team_data->mail_add_groupname = $request->mail_add_groupname;
       $team_data->title = $request->title;
       $team_data->website_fb_page = $request->website_fb_page;
       $team_data->save();
       // return back()->with('success', 'updation has been done successfully.');
        return redirect('admin/teams/')->with('success', 'updation has been done successfully');
    }

    /* for deleting the team */
    public function destroy(Request $request, $id)
   {
       $team = Team::find($id);
       $team->delete();
       return redirect('admin/teams/')->with('success', 'Deletion has been done successfully');
   }


   public function tripadvisor_crawling(Request $request)
   {
        // $trip = trip_url::find(1);
        // $url= $trip->url;
    $url = "https://www.tripadvisor.in/Restaurant_Review-g32655-d2236163-Reviews-Figueroa_Philly_Cheese_Steak-Los_Angeles_California.html";
        $client = new Client();
        $crawler = $client->request('GET', $url);
        $links_count = $crawler->filter('a')->count();
        $all_links = [];
        if($links_count > 0){
            $links = $crawler->filter('a')->links();
            // dd($links);
            // $d = $links['130'];
            // echo $d;
            foreach ($links as $link) {
                $all_links[] = $link->getURI();
                // $crawl = new Crawl;
            }
                // $link = $all_links['4'];
            //      $phone = $all_links['131'];
            //    // $email = $all_links['191'];
            // $crawl = new Crawl;
            // $crawl->trip_url = $url;
            // $crawl->phone =  $phone;
            // // $crawl->email =  $email;
            // // $crawl->email= "mailto:reservierung@gmoakeller.at";
            // // $crawl->business_name =  $business_name;
            // $crawl->save();
            // echo "content saved";

            $all_links = array_unique($all_links);
            // dd($all_links);
            echo "All Avialble Links From this page $url Page<pre>"; print_r($all_links);echo "</pre>";

        } else {

            echo "No Links Found";

        }
   }

   public function editPackage(Request $request, $id)
   {

  
    $spo = SponsorPackageOption::find($id);
    return view('packageEdit')->with('spo', $spo);
    // return view('packageEdit', ['spo'=>$spo, 'sponsor_amount'=>$sponsor_amount]);

   }


   public function editPackageUpdate(Request $request, $id)
   {
    
     $spo = SponsorPackageOption::find($id);
     $spo->tier_name = $request->tier_name;
     $spo->active = $request->active;
     $spo->description = $request->description;
     $spo->sponsor_amount = $request->sponsor_amount;
     $spo->slot_available = $request->slot_available;
     $spo->Total = $request->total;

     $spo->save();
   // return view('packageEdit')->with('spo', $spo);
     return redirect('admin/teams/create')->with('success', 'package has been updated successfully');
    
   }

  public function fetchHomeCourts(Request $request) {

      $validator = Validator::make(
          array(
              'lat' => $request->lat,
              'long' => $request->long,
          ),
          array(
              'lat' => 'required',
              'long' => 'required',
          )
      );
      if ($validator->fails()) {
          $this->setMeta("422", Constant::MSG_422);
          return response()->json($this->setResponse());
      }
      $homeCourt= HomeCourt::whereRaw("ACOS(SIN(RADIANS('latitude'))*SIN(RADIANS($request->lat))+COS(RADIANS('latitude'))*COS(RADIANS($request->lat))*COS(RADIANS('longitude')-RADIANS($request->long)))*6380 < 10")->first();
      if(!$homeCourt) {
          $this->setMeta("200", "No courts found");
          $this->setData("homeCourts",$homeCourt);
          return response()->json($this->setResponse());
      }
      $this->setMeta("200", "Home court list");
      $this->setData("homeCourts",$homeCourt);
      return response()->json($this->setResponse());
  }


}