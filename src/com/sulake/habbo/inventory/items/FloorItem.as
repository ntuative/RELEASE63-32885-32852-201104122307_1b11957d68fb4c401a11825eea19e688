package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2100:String;
      
      protected var var_1453:Number;
      
      protected var var_2872:Boolean;
      
      protected var var_2873:Boolean;
      
      protected var var_2455:Boolean;
      
      protected var var_2671:Boolean;
      
      protected var var_2874:int;
      
      protected var var_2451:int;
      
      protected var var_2453:int;
      
      protected var var_2454:int;
      
      protected var var_1687:String;
      
      protected var var_1627:int;
      
      protected var var_1004:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2455 = param5;
         this.var_2873 = param6;
         this.var_2872 = param7;
         this.var_2671 = param8;
         this.var_2100 = param9;
         this.var_1453 = param10;
         this.var_2874 = param11;
         this.var_2451 = param12;
         this.var_2453 = param13;
         this.var_2454 = param14;
         this.var_1687 = param15;
         this.var_1627 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2100;
      }
      
      public function get extra() : Number
      {
         return this.var_1453;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2872;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2873;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2455;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2671;
      }
      
      public function get expires() : int
      {
         return this.var_2874;
      }
      
      public function get creationDay() : int
      {
         return this.var_2451;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2453;
      }
      
      public function get creationYear() : int
      {
         return this.var_2454;
      }
      
      public function get slotId() : String
      {
         return this.var_1687;
      }
      
      public function get songId() : int
      {
         return this.var_1627;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1004 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1004;
      }
   }
}
