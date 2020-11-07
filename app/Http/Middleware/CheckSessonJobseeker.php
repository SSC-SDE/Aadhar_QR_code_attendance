<?php

namespace App\Http\Middleware;

use Closure;
use DB;
class CheckSessonJobseeker
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $url = url('/admin');
        $url_current = url()->current();

        // Turn on output buffering  
        ob_start();  
        //Get the ipconfig details using system commond  
        system('ipconfig /all');  
        // Capture the output into a variable  
        $mycomsys=ob_get_contents();  
        // Clean (erase) the output buffer  
        ob_clean();  
        $find_mac = "Physical"; //find the "Physical" & Find the position of Physical text  
        $pmac = strpos($mycomsys, $find_mac);  
        // Get Physical Address  
        $macaddress=substr($mycomsys,($pmac+36),17);  
        //Display Mac Address  
        // echo $macaddress; 
        // exit;

        $mac_loop = DB::table('devices')->get();

        $data = $request->session()->get('user_id');
        $ip_data = $request->session()->get('ip');
        $c =0 ;

         if(@$data == ""){
            return redirect('/');
         }
        // else if(@$val->mac_address !== $macaddress){
        //     return redirect('/admin');
        // }
        else{
            // foreach($mac_loop as $item){

            //     if($ip_data == $item->ip){
            //         $c = $c + 1;
            //     }
               
            // }

            // if($c == 1){
                return $next($request);
            // }
            // else{
            //     return redirect('/');
            // }
        } 
    }
}
