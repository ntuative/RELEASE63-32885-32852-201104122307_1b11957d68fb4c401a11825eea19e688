package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2521:String;
      
      private var var_2600:int;
      
      private var var_2190:int;
      
      private var var_2601:String;
      
      private var var_2717:int;
      
      private var var_1999:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2521 = param1.readString();
         this.var_2600 = param1.readInteger();
         this.var_2190 = param1.readInteger();
         this.var_2601 = param1.readString();
         this.var_2717 = param1.readInteger();
         this.var_1999 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2521;
      }
      
      public function get unitPort() : int
      {
         return this.var_2600;
      }
      
      public function get worldId() : int
      {
         return this.var_2190;
      }
      
      public function get castLibs() : String
      {
         return this.var_2601;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2717;
      }
      
      public function get nodeId() : int
      {
         return this.var_1999;
      }
   }
}
