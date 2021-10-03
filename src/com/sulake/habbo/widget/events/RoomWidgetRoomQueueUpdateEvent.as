package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_377:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_551:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1262:int;
      
      private var var_2801:Boolean;
      
      private var var_451:Boolean;
      
      private var var_1961:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1262 = param2;
         this.var_2801 = param3;
         this.var_451 = param4;
         this.var_1961 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1262;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2801;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_451;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1961;
      }
   }
}
