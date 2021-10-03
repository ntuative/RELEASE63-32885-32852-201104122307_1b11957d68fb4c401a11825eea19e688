package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1664:String;
      
      private var var_1833:int;
      
      private var var_2533:Boolean;
      
      private var var_2532:Boolean;
      
      private var var_2529:int;
      
      private var var_2530:int;
      
      private var var_2534:int;
      
      private var var_2535:int;
      
      private var var_2531:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1664 = param1.readString();
         this.var_1833 = param1.readInteger();
         this.var_2533 = param1.readBoolean();
         this.var_2532 = param1.readBoolean();
         this.var_2529 = param1.readInteger();
         this.var_2530 = param1.readInteger();
         this.var_2534 = param1.readInteger();
         this.var_2535 = param1.readInteger();
         this.var_2531 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1664;
      }
      
      public function get price() : int
      {
         return this.var_1833;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2533;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2532;
      }
      
      public function get periods() : int
      {
         return this.var_2529;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2530;
      }
      
      public function get year() : int
      {
         return this.var_2534;
      }
      
      public function get month() : int
      {
         return this.var_2535;
      }
      
      public function get day() : int
      {
         return this.var_2531;
      }
   }
}
