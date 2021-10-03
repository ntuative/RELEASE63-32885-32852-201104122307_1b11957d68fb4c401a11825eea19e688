package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_847:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         this.var_847 = new ByteArray();
         this.var_847.writeShort(param1);
         this.var_847.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         this.var_847.position = 0;
         if(this.var_847.bytesAvailable)
         {
            _loc1_ = this.var_847.readShort();
            this.var_847.position = 0;
         }
         return _loc1_;
      }
   }
}
