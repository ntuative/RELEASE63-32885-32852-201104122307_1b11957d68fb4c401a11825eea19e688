package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1355:int;
      
      private var var_2373:int;
      
      private var var_650:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1355 = param1.readInteger();
         this.var_2373 = param1.readInteger();
         this.var_650 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_650.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get prizeLevelId() : int
      {
         return this.var_1355;
      }
      
      public function get probabilityDenominator() : int
      {
         return this.var_2373;
      }
      
      public function get prizes() : Array
      {
         return this.var_650;
      }
   }
}
