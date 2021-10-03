package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1209:String = "M";
      
      public static const const_1595:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_155:Number = 0;
      
      private var var_385:int = 0;
      
      private var _name:String = "";
      
      private var var_2664:int = 0;
      
      private var var_1043:String = "";
      
      private var var_608:String = "";
      
      private var var_2831:String = "";
      
      private var var_2203:int;
      
      private var var_2832:int = 0;
      
      private var var_2835:String = "";
      
      private var var_2833:int = 0;
      
      private var var_2830:int = 0;
      
      private var var_2834:String = "";
      
      private var var_192:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_2664;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2664 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1043;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_1043 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_608 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2831;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2831 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2203;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2203 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2832;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2832 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2835;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2835 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2833;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2833 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2830;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2830 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2834;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2834 = param1;
         }
      }
   }
}
