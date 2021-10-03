package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_804:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_853:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_809:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_716:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_716 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_716;
      }
   }
}
