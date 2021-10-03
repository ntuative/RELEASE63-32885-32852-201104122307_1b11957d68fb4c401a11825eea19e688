package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2673:Boolean = false;
      
      private var var_2675:int = 0;
      
      private var var_2674:int = 0;
      
      private var var_2549:int = 0;
      
      private var var_2545:int = 0;
      
      private var var_154:Number = 0;
      
      private var var_155:Number = 0;
      
      private var var_385:String = "";
      
      private var _type:int = 0;
      
      private var var_2939:String = "";
      
      private var var_1453:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_192:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2673 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2673;
      }
      
      public function get wallX() : Number
      {
         return this.var_2675;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2675 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2674;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2674 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2549;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2549 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2545;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2545 = param1;
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
      
      public function get dir() : String
      {
         return this.var_385;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_385 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_192)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_192)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_192)
         {
            this._data = param1;
         }
      }
   }
}
