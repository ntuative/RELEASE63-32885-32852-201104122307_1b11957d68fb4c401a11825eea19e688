package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1707:int = 0;
      
      private var var_1708:int = 0;
      
      private var var_1990:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1707;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1708;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
      
      public function flush() : Boolean
      {
         this.var_1707 = 0;
         this.var_1708 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1707 = param1.readInteger();
         this.var_1708 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         return true;
      }
   }
}
