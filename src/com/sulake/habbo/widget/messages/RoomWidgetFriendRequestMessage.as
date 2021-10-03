package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_669:String = "RWFRM_ACCEPT";
      
      public static const const_874:String = "RWFRM_DECLINE";
       
      
      private var var_1259:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this.var_1259 = param2;
      }
      
      public function get requestId() : int
      {
         return this.var_1259;
      }
   }
}
