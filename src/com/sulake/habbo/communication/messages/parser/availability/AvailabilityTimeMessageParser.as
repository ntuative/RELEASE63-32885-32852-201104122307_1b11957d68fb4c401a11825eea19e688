package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1400:Boolean;
      
      private var var_1626:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1400;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1626;
      }
      
      public function flush() : Boolean
      {
         this.var_1400 = false;
         this.var_1626 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1400 = param1.readInteger() > 0;
         this.var_1626 = param1.readInteger();
         return true;
      }
   }
}
