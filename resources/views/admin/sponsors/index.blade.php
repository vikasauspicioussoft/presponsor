@extends('layouts.admin')
@section('content')

	<div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">SPONSORS GROUP LISTING</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">TEAMS</h6>
			  <h6 class="m-0 font-weight-bold text-primary right" style="float:right;"><a href="{{url('/admin/sponsors/create/')}}"><i class="fa fa-user-plus" aria-hidden="true"></i>CREATE SPONSOR</a></h6>
            </div>

            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>SponsorID</th>
                      <th>Sponsor Name</th>
                      <th>Category</th>
                      <th>Yelp Website</th>
                      <th>Yelp Address</th>
                      <!-- <th>Trip Advisor Email</th> -->
                     <!-- <th>Yellow Pages Email</th>
                      <th>Whois Email</th>
                      <th>Manually Email</th>
                      <th>Team Id</th>
                      <th>Unsubscribe Date</th>
                      <th>Sponsorship Tier</th>
                      <th>Sponsorship Amount</th>
                      <th>Sponsorship Date</th> -->
                      <th>Sponsor url</th>
                      
                    </tr>
                  </thead>
           

                
                        <tbody>
            @foreach($data as $d)
                    <tr>
                      <td>{{$d->id}}</td>
                      <td>{{$d->sponsor_name}}</td>
                      <td>{{$d->category}}</td>
                      <td>{{$d->yelp_website}}</td>
                      <td>{{$d->yelp_address}}</td>
                      <!-- <td>{{$d->trip_advisor_email}}</td> -->

                      <!-- <td>{{$d->website_email}}</td>
                      <td>{{$d->whoIs_email}}</td>
                      <td>{{$d->manually_email}}</td>
                      <td>{{$d->team_id}}</td>
                      <td>{{$d->unsubscribe_date}}</td>
                      <td>{{$d->sponsorship_tier}}</td>
                      <td>{{$d->sponsorship_amount}}</td>
                      <td>{{$d->sponsorship_date}}</td> -->
                      <td><a href="{{url('/admin/sponsors/')}}/{{$d->id}}/show">Sponsor Url</a></td>



                    </tr>
                    @endforeach
                  </tbody> 
                </table>
              </div>
            </div>
          </div>

        </div>

@endsection