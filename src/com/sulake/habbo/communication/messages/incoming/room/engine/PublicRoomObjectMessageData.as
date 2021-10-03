package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_155:Number = 0;
      
      private var var_385:int = 0;
      
      private var var_493:int = 0;
      
      private var var_612:int = 0;
      
      private var var_192:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_192)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_192)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_192)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_154 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_155;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_155 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_385;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_385 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_493;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_493 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_612;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_612 = param1;
         }
      }
   }
}
