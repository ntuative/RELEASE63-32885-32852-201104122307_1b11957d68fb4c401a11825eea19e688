package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2450:int;
      
      private var var_1383:String;
      
      private var var_2456:int;
      
      private var var_2457:int;
      
      private var _category:int;
      
      private var var_2100:String;
      
      private var var_1453:int;
      
      private var var_2452:int;
      
      private var var_2451:int;
      
      private var var_2453:int;
      
      private var var_2454:int;
      
      private var var_2455:Boolean;
      
      private var var_2940:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2450 = param1;
         this.var_1383 = param2;
         this.var_2456 = param3;
         this.var_2457 = param4;
         this._category = param5;
         this.var_2100 = param6;
         this.var_1453 = param7;
         this.var_2452 = param8;
         this.var_2451 = param9;
         this.var_2453 = param10;
         this.var_2454 = param11;
         this.var_2455 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2450;
      }
      
      public function get itemType() : String
      {
         return this.var_1383;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2456;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2457;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2100;
      }
      
      public function get extra() : int
      {
         return this.var_1453;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2452;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2455;
      }
      
      public function get songID() : int
      {
         return this.var_1453;
      }
   }
}
