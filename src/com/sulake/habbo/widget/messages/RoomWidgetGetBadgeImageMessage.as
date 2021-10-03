package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_692:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_312:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_692);
         this.var_312 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_312;
      }
   }
}
