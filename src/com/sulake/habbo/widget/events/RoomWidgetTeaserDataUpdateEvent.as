package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_559:String = "RWTDUE_TEASER_DATA";
      
      public static const const_957:String = "RWTDUE_GIFT_DATA";
      
      public static const const_912:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_352:int;
      
      private var _data:String;
      
      private var var_402:int;
      
      private var var_182:String;
      
      private var var_2438:String;
      
      private var var_2436:Boolean;
      
      private var var_1444:int = 0;
      
      private var var_2437:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_352;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_402;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2438;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2436;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2437;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1444;
      }
      
      public function set status(param1:int) : void
      {
         this.var_402 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2438 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2436 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2437 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_352 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_182;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_182 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1444 = param1;
      }
   }
}
