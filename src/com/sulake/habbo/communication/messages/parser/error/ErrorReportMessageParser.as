package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1659:int;
      
      private var var_1886:int;
      
      private var var_1887:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1886 = param1.readInteger();
         this.var_1659 = param1.readInteger();
         this.var_1887 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1659 = 0;
         this.var_1886 = 0;
         this.var_1887 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1659;
      }
      
      public function get messageId() : int
      {
         return this.var_1886;
      }
      
      public function get timestamp() : String
      {
         return this.var_1887;
      }
   }
}
