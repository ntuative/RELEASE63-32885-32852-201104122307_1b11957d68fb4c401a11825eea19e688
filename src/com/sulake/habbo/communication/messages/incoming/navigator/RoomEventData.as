package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1230:Boolean;
      
      private var var_2463:int;
      
      private var var_2462:String;
      
      private var var_357:int;
      
      private var var_2466:int;
      
      private var var_2118:String;
      
      private var var_2464:String;
      
      private var var_2465:String;
      
      private var var_868:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_868 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1230 = false;
            return;
         }
         this.var_1230 = true;
         this.var_2463 = int(_loc2_);
         this.var_2462 = param1.readString();
         this.var_357 = int(param1.readString());
         this.var_2466 = param1.readInteger();
         this.var_2118 = param1.readString();
         this.var_2464 = param1.readString();
         this.var_2465 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_868.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_868 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2463;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2462;
      }
      
      public function get flatId() : int
      {
         return this.var_357;
      }
      
      public function get eventType() : int
      {
         return this.var_2466;
      }
      
      public function get eventName() : String
      {
         return this.var_2118;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2464;
      }
      
      public function get creationTime() : String
      {
         return this.var_2465;
      }
      
      public function get tags() : Array
      {
         return this.var_868;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1230;
      }
   }
}
