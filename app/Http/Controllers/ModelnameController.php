<?php

namespace App\Http\Controllers;
ini_set('max_execution_time', 300); //300 seconds = 5 minutes
use App\Modelname;
use Illuminate\Http\Request;
use Goutte\Client;
use Symfony\Component\DomCrawler\Crawler;
use App\Crawl;
use App\Yelp_address;

use App\yelp_url;
use App\yelp_test;
use App\Mail\sponsor_email;
use Mail;

class ModelnameController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

      public function sendMail2(Request $request)
    {
       /*Important one*/

       $url = yelp_url::find(1);

       $key = $url->key;

       Mail::to('vikashverma003@gmail.com')->send(new sponsor_email());
            // Mail::send(new SendEmail());
    }

    public function domainName(Request $request)
    {
        $data = array(
               // "remoteAddress"=>"https://www.cafecentral.wien/en/"
                "remoteAddress"=>"https://www.woodysbbq.com"
          // "remoteAddress"=>"https://www.tripadvisor.in/Restaurant_Review-g190454-d711471-Reviews-Figlmuller-Vienna.html"
        );
          //$request_url = "socwall.com";
            $ch = curl_init("https://www.yougetsignal.com/tools/whois-lookup/php/get-whois-lookup-json-data.php");
            // curl_setopt($ch, CURLOPT_HTTPHEADER,
            //     array(
            //         "Content-Type: application/json",
            //         "Authorization: Bearer ".$api_key
            // ));
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
            $response = curl_exec($ch); // Yelp response
            $arrayOfResults = json_decode($response, true);
             dd($arrayOfResults);
            $str = $arrayOfResults['whoisData'];
            $string =   $str;
            $subString = strstr($string, 'Email', true);
           // echo $subString;

            // $subString = strstr($str, '.com', true);
            // echo $subString;
            


            //echo $str;

             //echo strpos( $str, 'Email' ); 

            // print_r($arrayOfResults);

            // print_r($arrayOfResults);

            // echo "remote address" .$arrayOfResults['remoteAddress'] ."<br>";

            // echo "domain availbility" . $arrayOfResults['domainAvailable'] ."<br>";

            //curl_close($ch);

    }

    public function fetch_yelp($location)

    {
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

public function fetch_count(Request $request, $location)
{

// $yelp = yelp_test::where('location', $location)->get();
// echo "<pre>";
// print_r($yelp);
// $count = yelp_test::where('location', $location)->count();
// echo $count;

// die();

    $l = $location;
    $count=0;
    $member = 400;   
    if($member<500)
    {
          $array_content = array();

        while($count<=40)
        {
          array_push($array_content,  $l);
           $yelp_address = yelp_test::where('location',  $l)->get();
           $yelp_address_count = yelp_test::where('location',  $l)->count();

           if($yelp_address_count>0)
           {
            //array_push($array_content,  $l);
            while($count<40)
            {

            // echo "fetch the content";
             $yelp_address = yelp_test::where('location',  $l)->get();
             $yelp_address_count = yelp_test::where('location',  $l)->count();

             $count +=$yelp_address_count;
              //$count++;
             array_push($array_content,  $l);

             $l++;
            }
           
            $sponser = yelp_test::whereIn('location', $array_content)->get();
            return view('admin.sponsors.mailing')->with('data', $sponser);

           }
           else
           {

          $loop_data = $this->fetch_yelp($l);
          // testing
           foreach($loop_data as $city)
                {
                         $yelp_address = new yelp_test;
                         $business_name = $city->name;
                         $phone = $city->phone;
                        // echo $city->alias;
                         $city1 = $city->location->city;
                         $address = $city->location->address1;
                        // $zipcode = $city->location->zip_code->count();
                         $lat= $city->coordinates->latitude;
                         $lng= $city->coordinates->longitude;
                         $yelp_address->location = $l;
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
                $l++;
                $count++;
        }
    }
        $sponser = yelp_test::whereIn('location', $array_content)->get();
        return view('admin.sponsors.mailing')->with('data', $sponser);
      }
      else
      {    
          $array_content = array();
          while($count<=70)
            {
             
              array_push($array_content,  $l);
              $loop_data = $this->fetch_yelp($l);
              // testing
              $second_count = count($loop_data);
              $count += $second_count ;
              if($count<=70)
              {
                 foreach($loop_data as $city)
                      {
                               $yelp_address = new yelp_test;
                               $business_name = $city->name;
                               $phone = $city->phone;
                                 $address = $city->location->address1;
                              // echo $city->alias;
                               $city1 = $city->location->city;
                              // $zipcode = $city->location->zip_code->count();
                               $lat= $city->coordinates->latitude;
                               $lng= $city->coordinates->longitude;
                               $yelp_address->location = $l;
                               $yelp_address->city = $city1 ;
                               $yelp_address->business_name =$business_name;
                               $yelp_address->latitude =$lat;
                               $yelp_address->longitude =$lng;
                               $yelp_address->phone = $phone ;
                               $yelp_address->address = $address ;
                               $yelp_address->save();
                      } 
                  }   
                  
                    $l++;
                    $count++;
            }
             $sponser = yelp_test::whereIn('location', $array_content)->get();
             return view('admin.sponsors.mailing')->with('data', $sponser);
      }

}

    public function index()
    {
        
       // $url = "http://www.agiratech.com";
        //$url = "https://github.com/spatie/crawler";
      //$url = " https://albedo.dev/development/scraping-with-laravel/";
        //$url = "https://dzone.com/research";

       //$url = "https://stories.flipkart.com/contact-us/";
        //$url = "http://www.jackmorton.com/contact/";

        // $url = "https://www.tripadvisor.in/Restaurant_Review-g33252-d4821972-Reviews-Dialog_Cafe-West_Hollywood_California.html";

        // $url = "https://www.tripadvisor.in/Restaurant_Review-g60713-d353960-Reviews-Hog_Island_Oyster_Company-San_Francisco_California.html";

        // $url ="https://www.tripadvisor.in/Restaurant_Review-g60713-d7627146-Reviews-Liholiho_Yacht_Club-San_Francisco_California.html";

        $business_name = "Kunsthistorisches Museum  ";

        $url = "https://www.tripadvisor.in/Restaurant_Review-g190454-d7304130-Reviews-Jonas_Reindl-Vienna.html";


       // $url = "https://www.advantagemrktg.com/advantage/sponsorship-consulting/?gclid=CjwKCAjwkenqBRBgEiwA-bZVtsy7Ube1v_f1mDL6NDCPhsrQRijIBkUMdoGbLhWDAB-e6lOGwMzEwxoCVzoQAvD_BwE";

        // $url = "https://activewealthshow.com";

        // $url = "https://activewealthshow.com/contact/";

         // $url = "https://activewealth.com";
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
            //     $link = $all_links['4'];

            //      $phone = $all_links['185'];

            //    // $email = $all_links['191'];

            // $crawl = new Crawl;
            // $crawl->trip_url = $link;
            // $crawl->phone =  $phone;
            // // $crawl->email =  $email;
            // $crawl->email= "mailto:reservierung@gmoakeller.at";
            // $crawl->business_name =  $business_name;


            // $crawl->save();
            // echo "content saved";

            $all_links = array_unique($all_links);

            // dd($all_links);

            echo "All Avialble Links From this page $url Page<pre>"; print_r($all_links);echo "</pre>";

        } else {

            echo "No Links Found";

        }

        die;


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Modelname  $modelname
     * @return \Illuminate\Http\Response
     */
    public function show(Modelname $modelname)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Modelname  $modelname
     * @return \Illuminate\Http\Response
     */
    public function edit(Modelname $modelname)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Modelname  $modelname
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Modelname $modelname)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Modelname  $modelname
     * @return \Illuminate\Http\Response
     */
    public function destroy(Modelname $modelname)
    {
        //
    }
}
