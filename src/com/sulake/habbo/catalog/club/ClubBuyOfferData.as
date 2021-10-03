package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1664:String;
      
      private var var_1833:int;
      
      private var var_2533:Boolean;
      
      private var var_2532:Boolean;
      
      private var var_2529:int;
      
      private var var_2530:int;
      
      private var var_350:ICatalogPage;
      
      private var var_2534:int;
      
      private var var_2535:int;
      
      private var var_2531:int;
      
      private var var_1412:String;
      
      private var var_2612:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1664 = param2;
         this.var_1833 = param3;
         this.var_2533 = param4;
         this.var_2532 = param5;
         this.var_2529 = param6;
         this.var_2530 = param7;
         this.var_2534 = param8;
         this.var_2535 = param9;
         this.var_2531 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1412;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1412 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1664;
      }
      
      public function get price() : int
      {
         return this.var_1833;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2533;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2532;
      }
      
      public function get periods() : int
      {
         return this.var_2529;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2530;
      }
      
      public function get year() : int
      {
         return this.var_2534;
      }
      
      public function get month() : int
      {
         return this.var_2535;
      }
      
      public function get day() : int
      {
         return this.var_2531;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_207;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1833;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_350;
      }
      
      public function get priceType() : String
      {
         return Offer.const_950;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1664;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_350 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2612;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2612 = param1;
      }
   }
}
