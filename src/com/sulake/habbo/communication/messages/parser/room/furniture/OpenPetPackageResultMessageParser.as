package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_352:int = 0;
      
      private var var_1858:int = 0;
      
      private var var_1859:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_352;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1858;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1859;
      }
      
      public function flush() : Boolean
      {
         this.var_352 = 0;
         this.var_1858 = 0;
         this.var_1859 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_352 = param1.readInteger();
         this.var_1858 = param1.readInteger();
         this.var_1859 = param1.readString();
         return true;
      }
   }
}
