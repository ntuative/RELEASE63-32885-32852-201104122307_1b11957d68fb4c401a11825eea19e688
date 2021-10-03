package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_153:String = "ROE_MOUSE_CLICK";
      
      public static const const_1905:String = "ROE_MOUSE_ENTER";
      
      public static const const_539:String = "ROE_MOUSE_MOVE";
      
      public static const const_1950:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1977:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1941:String = "";
      
      private var var_2546:Boolean;
      
      private var var_2550:Boolean;
      
      private var var_2552:Boolean;
      
      private var var_2548:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1941 = param2;
         this.var_2546 = param5;
         this.var_2550 = param6;
         this.var_2552 = param7;
         this.var_2548 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1941;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2546;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2550;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2552;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2548;
      }
   }
}
