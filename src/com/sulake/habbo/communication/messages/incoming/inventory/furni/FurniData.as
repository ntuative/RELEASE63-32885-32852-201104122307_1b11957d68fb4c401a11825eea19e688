package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2512:int;
      
      private var var_1383:String;
      
      private var _objId:int;
      
      private var var_1665:int;
      
      private var _category:int;
      
      private var var_2100:String;
      
      private var var_2630:Boolean;
      
      private var var_2631:Boolean;
      
      private var var_2632:Boolean;
      
      private var var_2162:Boolean;
      
      private var var_2341:int;
      
      private var var_1453:int;
      
      private var var_1687:String = "";
      
      private var var_1627:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2512 = param1;
         this.var_1383 = param2;
         this._objId = param3;
         this.var_1665 = param4;
         this._category = param5;
         this.var_2100 = param6;
         this.var_2630 = param7;
         this.var_2631 = param8;
         this.var_2632 = param9;
         this.var_2162 = param10;
         this.var_2341 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1687 = param1;
         this.var_1453 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2512;
      }
      
      public function get itemType() : String
      {
         return this.var_1383;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1665;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2100;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2630;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2631;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2632;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2162;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2341;
      }
      
      public function get slotId() : String
      {
         return this.var_1687;
      }
      
      public function get songId() : int
      {
         return this.var_1627;
      }
      
      public function get extra() : int
      {
         return this.var_1453;
      }
   }
}
