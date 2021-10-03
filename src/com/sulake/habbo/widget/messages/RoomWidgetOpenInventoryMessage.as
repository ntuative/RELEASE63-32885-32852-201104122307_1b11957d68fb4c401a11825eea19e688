package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_842:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1221:String = "inventory_effects";
      
      public static const const_1196:String = "inventory_badges";
      
      public static const const_1567:String = "inventory_clothes";
      
      public static const const_1468:String = "inventory_furniture";
       
      
      private var var_2585:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_842);
         this.var_2585 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2585;
      }
   }
}
