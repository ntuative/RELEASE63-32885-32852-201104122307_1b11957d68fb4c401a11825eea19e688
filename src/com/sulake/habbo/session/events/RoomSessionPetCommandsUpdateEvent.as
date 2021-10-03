package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetCommandsUpdateEvent extends RoomSessionEvent
   {
      
      public static const PET_COMMANDS:String = "RSPIUE_ENABLED_PET_COMMANDS";
       
      
      private var var_1633:int;
      
      private var var_2593:Array;
      
      private var var_2820:Array;
      
      public function RoomSessionPetCommandsUpdateEvent(param1:IRoomSession, param2:int, param3:Array, param4:Array, param5:Boolean = false, param6:Boolean = false)
      {
         super(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,param1,param5,param6);
         this.var_1633 = param2;
         this.var_2593 = param3;
         this.var_2820 = param4;
      }
      
      public function get petId() : int
      {
         return this.var_1633;
      }
      
      public function get allCommands() : Array
      {
         return this.var_2593;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_2820;
      }
   }
}
