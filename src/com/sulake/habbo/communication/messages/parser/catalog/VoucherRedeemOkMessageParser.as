package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1001:String = "";
      
      private var var_1214:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1214 = "";
         this.var_1001 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1214 = param1.readString();
         this.var_1001 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1001;
      }
      
      public function get productDescription() : String
      {
         return this.var_1214;
      }
   }
}
