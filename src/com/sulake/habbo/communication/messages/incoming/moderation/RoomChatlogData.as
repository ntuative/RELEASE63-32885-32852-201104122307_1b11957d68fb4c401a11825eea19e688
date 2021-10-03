package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_2017:Boolean;
      
      private var _roomId:int;
      
      private var var_933:String;
      
      private var var_2016:Array;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         this.var_2016 = new Array();
         super();
         this.var_2017 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_933 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_2016.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + this.var_2017 + ", " + this._roomId + ", " + this.var_933 + ", " + this.chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2017;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_933;
      }
      
      public function get chatlog() : Array
      {
         return this.var_2016;
      }
   }
}
