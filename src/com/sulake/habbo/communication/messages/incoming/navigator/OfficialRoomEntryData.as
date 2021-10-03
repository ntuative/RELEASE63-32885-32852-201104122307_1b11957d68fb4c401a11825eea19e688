package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1048:int = 1;
      
      public static const const_724:int = 2;
      
      public static const const_704:int = 3;
      
      public static const const_1660:int = 4;
       
      
      private var _index:int;
      
      private var var_2566:String;
      
      private var var_2567:String;
      
      private var var_2565:Boolean;
      
      private var var_2568:String;
      
      private var var_920:String;
      
      private var var_2569:int;
      
      private var var_2296:int;
      
      private var _type:int;
      
      private var var_2229:String;
      
      private var var_960:GuestRoomData;
      
      private var var_961:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2566 = param1.readString();
         this.var_2567 = param1.readString();
         this.var_2565 = param1.readInteger() == 1;
         this.var_2568 = param1.readString();
         this.var_920 = param1.readString();
         this.var_2569 = param1.readInteger();
         this.var_2296 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1048)
         {
            this.var_2229 = param1.readString();
         }
         else if(this._type == const_704)
         {
            this.var_961 = new PublicRoomData(param1);
         }
         else if(this._type == const_724)
         {
            this.var_960 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_960 != null)
         {
            this.var_960.dispose();
            this.var_960 = null;
         }
         if(this.var_961 != null)
         {
            this.var_961.dispose();
            this.var_961 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2566;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2567;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2565;
      }
      
      public function get picText() : String
      {
         return this.var_2568;
      }
      
      public function get picRef() : String
      {
         return this.var_920;
      }
      
      public function get folderId() : int
      {
         return this.var_2569;
      }
      
      public function get tag() : String
      {
         return this.var_2229;
      }
      
      public function get userCount() : int
      {
         return this.var_2296;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_960;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_961;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1048)
         {
            return 0;
         }
         if(this.type == const_724)
         {
            return this.var_960.maxUserCount;
         }
         if(this.type == const_704)
         {
            return this.var_961.maxUsers;
         }
         return 0;
      }
   }
}
