package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_357:int;
      
      private var var_2296:int;
      
      private var var_2295:Boolean;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_124:RoomData;
      
      private var var_800:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_357 = param1.readInteger();
         this.var_2296 = param1.readInteger();
         this.var_2295 = param1.readBoolean();
         this.var_2196 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_124 = new RoomData(param1);
         this.var_800 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_124 != null)
         {
            this.var_124.dispose();
            this.var_124 = null;
         }
         if(this.var_800 != null)
         {
            this.var_800.dispose();
            this.var_800 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_357;
      }
      
      public function get userCount() : int
      {
         return this.var_2296;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2295;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_124;
      }
      
      public function get event() : RoomData
      {
         return this.var_800;
      }
   }
}
