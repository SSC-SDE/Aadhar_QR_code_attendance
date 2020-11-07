<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use DB;
use Mail;
use Session;
use Hash;
// use Stevebauman\Wmi\Wmi;
use App\user_table;
use App\log_in_log;
use App\permission;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;

class log_inController extends Controller
{
    public function log_in(){
        return view('welcome');
    }
    
    public function log_in_config(REQUEST $request){
        $password = $request->password;
        $user_id  = $request->user_id; 
        $data = user_table::where('user_id',$user_id)->where('password',$password)->first();
        if($data){
            // if (Hash::check($data->password , $password)) {
            //     // The passwords match...
            //     $request->session()->put('user_id', $data->user_id);
            //     $request->session()->put('type', $data->type);
            //     $request->session()->put('name', $data->name);

            //     return \redirect('/view_home');
            // }
            // else{
            //     $error = 1;
            //     return view('welcome',\compact('error'));
            // }

            // return shell_exec('C:\Windows\System32\wbem\WMIC.exe csproduct get UUID');

            // $wmi = new Wmi($host = 'DESKTOP-O4UE2QL', $username = 'Morning-Star', $password = '7903826151');
            // $wmi = new Wmi();
            // $connection = $wmi->connect('root\\cimv2');
                
            // $query = $connection->newQuery();
            // $results = $query->from('Win32_DiskDrive')->get();
           
            // print_r(variant_get_type($v));
            //  __toString($results);
              
            // print_r($results);

            // exit;


            $permission = permission::where('user_id',$data->id)->first();
            //ADDING DATA TO SESSION
            $request->session()->put('user_id', $data->user_id);
            $request->session()->put('type', $data->type);
            $request->session()->put('name', $data->name);
            //IN  OUT
            $request->session()->put('read_in_out',$permission->read_in_out);
            $request->session()->put('edit_in_out',$permission->edit_in_out );
            $request->session()->put('delete_in_out',$permission->delete_in_out);
            //VISITOR
            $request->session()->put('read_visitor',$permission->read_visitor );
            $request->session()->put('edit_visitor',$permission->edit_visitor);
            $request->session()->put('delete_visitor',$permission->delete_visitor);
            //ENTRY
            $request->session()->put('in_entry',$permission->in_entry);
            $request->session()->put('out_entry',$permission->out_entry);

            // $request->session()->put('ip', $request->ip());

            $add = new log_in_log();
            $add->table_id = $data->id ;
            $add->user_id = $data->user_id;
            // $add->ip = $request->ip();
            $add->save();

            return \redirect('/view_home');
        }
        else{
            $error = 1;
            return view('welcome',\compact('error'));
        }
        // return $data;
    }
    
    
}
