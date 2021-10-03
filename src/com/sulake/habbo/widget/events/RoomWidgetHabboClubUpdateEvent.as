package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_279:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2729:int = 0;
      
      private var var_2728:int = 0;
      
      private var var_2727:int = 0;
      
      private var var_2730:Boolean = false;
      
      private var var_2137:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_279,param6,param7);
         this.var_2729 = param1;
         this.var_2728 = param2;
         this.var_2727 = param3;
         this.var_2730 = param4;
         this.var_2137 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2729;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2728;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2727;
      }
      
      public function get method_14() : Boolean
      {
         return this.var_2730;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2137;
      }
   }
}
