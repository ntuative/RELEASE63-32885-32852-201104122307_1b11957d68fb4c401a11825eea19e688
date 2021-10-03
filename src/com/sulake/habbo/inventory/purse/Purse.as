package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1663:int = 0;
      
      private var var_1662:int = 0;
      
      private var var_2739:int = 0;
      
      private var var_2738:Boolean = false;
      
      private var var_2260:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1663 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1662 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2739 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2738 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2260 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1663;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1662;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2739;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2738;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2260;
      }
   }
}
