package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1327:int = 80;
       
      
      private var var_498:Map;
      
      private var var_933:String = "";
      
      private var var_1401:Array;
      
      public function UserRegistry()
      {
         this.var_498 = new Map();
         this.var_1401 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_498;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_933 = param1;
         if(this.var_933 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_933 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_498.getValue(param1) != null)
         {
            this.var_498.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_933);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_933 == "")
         {
            this.var_1401.push(param1);
         }
         this.var_498.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_498.length > const_1327)
         {
            _loc1_ = this.var_498.getKey(0);
            this.var_498.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1401.length > 0)
         {
            _loc1_ = this.var_498.getValue(this.var_1401.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_933;
            }
         }
      }
   }
}
