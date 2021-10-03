package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_608:String;
      
      private var var_2394:String;
      
      private var var_914:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_608 = param1;
         this.var_914 = param2;
         this.var_2394 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function get race() : String
      {
         return this.var_2394;
      }
      
      public function get gender() : String
      {
         return this.var_914;
      }
   }
}
