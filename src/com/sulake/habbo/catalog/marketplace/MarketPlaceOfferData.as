package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2123:int;
      
      private var var_2100:String;
      
      private var var_1833:int;
      
      private var var_2122:int;
      
      private var var_2629:int;
      
      private var var_402:int;
      
      private var var_2124:int = -1;
      
      private var var_1843:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2123 = param3;
         this.var_2100 = param4;
         this.var_1833 = param5;
         this.var_402 = param6;
         this.var_2122 = param7;
         this.var_1843 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2122;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2629 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2629;
      }
      
      public function get status() : int
      {
         return this.var_402;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2124;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2124 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1833 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1843;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1843 = param1;
      }
   }
}
