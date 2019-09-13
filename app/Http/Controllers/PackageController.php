<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\SponsorPackage;
use App\SponsorPackageOption;

class PackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $package=SponsorPackage::get();
        return view('admin.package.index')->with('package', $package);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.package.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $package=new SponsorPackage;
        $package->participants= $request->participants;
        $package->diamond= $request->diamond;
        $package->platinum= $request->platinum;
        $package->gold= $request->gold;
        $package->silver= $request->silver;
        $package->save();
         return redirect('admin/package/')->with('success', 'package has been created successfully');

    }


    public function selectPackage(Request $request)
    {

        $package=SponsorPackageOption::get();
        // echo "<pre>";
        // print_r($package);
       return view('selectPackage')->with('package', $package);

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
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

     $package=SponsorPackage::find($id);

     return view('admin.package.edit')->with('package', $package);

        
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
        
        $package=SponsorPackage::find($id);
        $package->participants= $request->participants;
        $package->diamond= $request->diamond;
        $package->platinum= $request->platinum;
        $package->gold= $request->gold;
        $package->silver= $request->silver;
        $package->save();
       return redirect('admin/package/')->with('success', 'package has been created successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sponsor = SponsorPackage::find($id);
        $sponsor->delete();
        return redirect('admin/package/')->with('success', 'Deletion has been done successfully');

    }
}
