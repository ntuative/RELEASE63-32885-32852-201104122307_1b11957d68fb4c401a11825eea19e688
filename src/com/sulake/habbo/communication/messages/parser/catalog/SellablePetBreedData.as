package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class SellablePetBreedData
   {
       
      
      private var _type:int;
      
      private var var_1739:int;
      
      private var var_2671:Boolean;
      
      private var var_2672:Boolean;
      
      public function SellablePetBreedData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1739 = param1.readInteger();
         this.var_2671 = param1.readBoolean();
         this.var_2672 = param1.readBoolean();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get breed() : int
      {
         return this.var_1739;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2671;
      }
      
      public function get rare() : Boolean
      {
         return this.var_2672;
      }
   }
}
