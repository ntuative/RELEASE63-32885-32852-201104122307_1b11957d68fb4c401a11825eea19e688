package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2123:int;
      
      private var var_2100:String;
      
      private var var_1833:int;
      
      private var var_402:int;
      
      private var var_2124:int = -1;
      
      private var var_2122:int;
      
      private var var_1843:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2123 = param3;
         this.var_2100 = param4;
         this.var_1833 = param5;
         this.var_402 = param6;
         this.var_2124 = param7;
         this.var_2122 = param8;
         this.var_1843 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2123;
      }
      
      public function get stuffData() : String
      {
         return this.var_2100;
      }
      
      public function get price() : int
      {
         return this.var_1833;
      }
      
      public function get status() : int
      {
         return this.var_402;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2124;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2122;
      }
      
      public function get offerCount() : int
      {
         return this.var_1843;
      }
   }
}
