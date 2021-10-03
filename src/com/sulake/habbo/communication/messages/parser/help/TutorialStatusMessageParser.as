package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1304:Boolean;
      
      private var var_1303:Boolean;
      
      private var var_1582:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1304;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1303;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1582;
      }
      
      public function flush() : Boolean
      {
         this.var_1304 = false;
         this.var_1303 = false;
         this.var_1582 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1304 = param1.readBoolean();
         this.var_1303 = param1.readBoolean();
         this.var_1582 = param1.readBoolean();
         return true;
      }
   }
}
