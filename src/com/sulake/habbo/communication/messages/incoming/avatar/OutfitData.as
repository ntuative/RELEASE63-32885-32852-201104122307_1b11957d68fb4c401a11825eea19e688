package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1687:int;
      
      private var var_2754:String;
      
      private var var_914:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1687 = param1.readInteger();
         this.var_2754 = param1.readString();
         this.var_914 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1687;
      }
      
      public function get figureString() : String
      {
         return this.var_2754;
      }
      
      public function get gender() : String
      {
         return this.var_914;
      }
   }
}
