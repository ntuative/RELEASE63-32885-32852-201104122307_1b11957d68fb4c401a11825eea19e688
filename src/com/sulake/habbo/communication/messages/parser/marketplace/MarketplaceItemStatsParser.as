package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2122:int;
      
      private var var_2461:int;
      
      private var var_2459:int;
      
      private var _dayOffsets:Array;
      
      private var var_1983:Array;
      
      private var var_1982:Array;
      
      private var var_2458:int;
      
      private var var_2460:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2122 = param1.readInteger();
         this.var_2461 = param1.readInteger();
         this.var_2459 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1983 = [];
         this.var_1982 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1983.push(param1.readInteger());
            this.var_1982.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2460 = param1.readInteger();
         this.var_2458 = param1.readInteger();
         return true;
      }
   }
}
