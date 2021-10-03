package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2122:int;
      
      private var var_2461:int;
      
      private var var_2459:int;
      
      private var _dayOffsets:Array;
      
      private var var_1983:Array;
      
      private var var_1982:Array;
      
      private var var_2458:int;
      
      private var var_2460:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2122;
      }
      
      public function get offerCount() : int
      {
         return this.var_2461;
      }
      
      public function get historyLength() : int
      {
         return this.var_2459;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1983;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1982;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2458;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2460;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2122 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2461 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2459 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1983 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1982 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2458 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2460 = param1;
      }
   }
}
