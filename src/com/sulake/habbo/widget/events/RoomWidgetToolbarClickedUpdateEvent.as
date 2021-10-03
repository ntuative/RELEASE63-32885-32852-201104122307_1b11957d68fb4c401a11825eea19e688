package com.sulake.habbo.widget.events
{
   public class RoomWidgetToolbarClickedUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_657:String = "RWUE_REQUEST_ME_MENU_TOOLBAR_CLICKED";
      
      public static const ICON_TYPE_ME_MENU:String = "ICON_TYPE_ME_MENU";
      
      public static const ICON_TYPE_ROOM_INFO:String = "ICON_TYPE_ROOM_INFO";
       
      
      private var var_2577:String;
      
      private var _active:Boolean = false;
      
      public function RoomWidgetToolbarClickedUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_657,param3,param4);
         this.var_2577 = param1;
         this._active = param2;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function get iconType() : String
      {
         return this.var_2577;
      }
   }
}
