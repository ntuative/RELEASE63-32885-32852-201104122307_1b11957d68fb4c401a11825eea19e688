package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var _offerId:int;
      
      private var var_2331:Boolean;
      
      private var var_2329:Boolean;
      
      private var var_2330:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_2331 = param1.readBoolean();
         this.var_2330 = param1.readInteger();
         this.var_2329 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2331;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2329;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2330;
      }
   }
}
