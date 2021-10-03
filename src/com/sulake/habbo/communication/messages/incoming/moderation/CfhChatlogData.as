package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1709:int;
      
      private var var_2333:int;
      
      private var var_1463:int;
      
      private var var_2332:int;
      
      private var var_124:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1709 = param1.readInteger();
         this.var_2333 = param1.readInteger();
         this.var_1463 = param1.readInteger();
         this.var_2332 = param1.readInteger();
         this.var_124 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1709);
      }
      
      public function get callId() : int
      {
         return this.var_1709;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2333;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1463;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2332;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_124;
      }
   }
}
