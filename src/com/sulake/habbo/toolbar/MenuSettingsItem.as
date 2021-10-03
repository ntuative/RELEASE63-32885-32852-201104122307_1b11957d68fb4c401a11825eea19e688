package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2292:String;
      
      private var var_2293:Array;
      
      private var var_2291:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2292 = param1;
         this.var_2293 = param2;
         this.var_2291 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2292;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2293;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2291;
      }
   }
}
