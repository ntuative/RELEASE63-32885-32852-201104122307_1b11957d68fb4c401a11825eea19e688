package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2188:Boolean;
      
      private var var_2187:int;
      
      private var var_1630:Array;
      
      private var var_748:Array;
      
      private var var_749:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2188;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2187;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1630 = [];
         this.var_748 = [];
         this.var_749 = [];
         this.var_2188 = param1.readBoolean();
         this.var_2187 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1630.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_748.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_749.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
