package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1994:Boolean;
      
      private var var_2789:int;
      
      private var var_418:Boolean;
      
      private var var_1272:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1994;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2789;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1272;
      }
      
      public function get owner() : Boolean
      {
         return this.var_418;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1272 != null)
         {
            this.var_1272.dispose();
            this.var_1272 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1994 = param1.readBoolean();
         if(this.var_1994)
         {
            this.var_2789 = param1.readInteger();
            this.var_418 = param1.readBoolean();
         }
         else
         {
            this.var_1272 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
