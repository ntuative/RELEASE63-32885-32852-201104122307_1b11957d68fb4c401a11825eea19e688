package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PollOfferParser implements IMessageParser
   {
       
      
      private var _id:int = -1;
      
      private var var_1954:String = "";
      
      public function PollOfferParser()
      {
         super();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_1954;
      }
      
      public function flush() : Boolean
      {
         this._id = -1;
         this.var_1954 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_1954 = param1.readString();
         return true;
      }
   }
}
