package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2682:int;
      
      private var var_2679:int;
      
      private var var_2678:String;
      
      private var var_2681:int;
      
      private var var_2680:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2682 = param1;
         this.var_2679 = param2;
         this.var_2678 = param3;
         this.var_2681 = param4;
         this.var_2680 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2682,this.var_2679,this.var_2678,this.var_2681,int(this.var_2680)];
      }
      
      public function dispose() : void
      {
      }
   }
}
