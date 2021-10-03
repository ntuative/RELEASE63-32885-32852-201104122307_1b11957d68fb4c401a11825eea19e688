package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2596:int;
      
      private var var_2598:int;
      
      private var var_1267:int;
      
      private var var_1269:int;
      
      private var var_1990:int;
      
      private var var_2597:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2596 = param1.readInteger();
         this.var_2598 = param1.readInteger();
         this.var_1267 = param1.readInteger();
         this.var_1269 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this.var_2597 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2596;
      }
      
      public function get charges() : int
      {
         return this.var_2598;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1267;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1269;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2597;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
   }
}
