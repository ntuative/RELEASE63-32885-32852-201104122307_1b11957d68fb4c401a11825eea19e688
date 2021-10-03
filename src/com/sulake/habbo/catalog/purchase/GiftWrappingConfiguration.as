package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1371:Boolean = false;
      
      private var var_1833:int;
      
      private var var_1630:Array;
      
      private var var_748:Array;
      
      private var var_749:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1371 = _loc2_.isWrappingEnabled;
         this.var_1833 = _loc2_.wrappingPrice;
         this.var_1630 = _loc2_.stuffTypes;
         this.var_748 = _loc2_.boxTypes;
         this.var_749 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1371;
      }
      
      public function get price() : int
      {
         return this.var_1833;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1630;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_748;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_749;
      }
   }
}
