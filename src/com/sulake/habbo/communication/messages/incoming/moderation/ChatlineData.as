package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2478:int;
      
      private var var_2477:int;
      
      private var var_2476:int;
      
      private var var_2479:String;
      
      private var var_1667:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2478 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this.var_2476 = param1.readInteger();
         this.var_2479 = param1.readString();
         this.var_1667 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2478;
      }
      
      public function get minute() : int
      {
         return this.var_2477;
      }
      
      public function get chatterId() : int
      {
         return this.var_2476;
      }
      
      public function get chatterName() : String
      {
         return this.var_2479;
      }
      
      public function get msg() : String
      {
         return this.var_1667;
      }
   }
}
