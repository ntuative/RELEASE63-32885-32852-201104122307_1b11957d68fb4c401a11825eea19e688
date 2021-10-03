package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_578:int = 0;
      
      public static const const_198:int = 1;
      
      public static const const_118:int = 2;
      
      public static const const_918:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1851:String;
      
      private var var_2174:int;
      
      private var var_1507:int;
      
      private var var_2424:int;
      
      private var var_2423:int;
      
      private var var_868:Array;
      
      private var var_2421:Array;
      
      private var var_2422:int;
      
      private var var_2425:Boolean;
      
      private var var_2426:Boolean;
      
      private var var_2419:Boolean;
      
      private var var_2420:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2425;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2425 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2426;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2426 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2419;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2419 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2420;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2420 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1851;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1851 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2174;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2174 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1507;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1507 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2424;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2424 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2423;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2423 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_868;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_868 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2421;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2421 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2422;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2422 = param1;
      }
   }
}
