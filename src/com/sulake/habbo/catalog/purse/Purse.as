package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_207:int = 0;
       
      
      private var var_1888:int = 0;
      
      private var var_1364:Dictionary;
      
      private var var_1663:int = 0;
      
      private var var_1662:int = 0;
      
      private var var_2260:Boolean = false;
      
      private var var_2262:int = 0;
      
      private var var_2261:int = 0;
      
      public function Purse()
      {
         this.var_1364 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1888;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1888 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1663;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1663 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1662;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1662 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1663 > 0 || this.var_1662 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2260;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2260 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2262;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2262 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2261;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2261 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1364;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1364 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1364[param1];
      }
   }
}
