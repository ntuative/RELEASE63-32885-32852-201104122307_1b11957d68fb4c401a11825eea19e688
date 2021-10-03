package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_425:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1203:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1200:String = "RWOCM_PIXELS";
      
      public static const const_1218:String = "RWOCM_CREDITS";
       
      
      private var var_2840:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_425);
         this.var_2840 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2840;
      }
   }
}
