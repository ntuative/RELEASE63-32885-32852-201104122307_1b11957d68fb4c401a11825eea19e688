package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2354:Number;
      
      private var var_1984:Number;
      
      private var var_932:Number;
      
      private var var_545:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2354 = param1;
         this.var_1984 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_932 = param1;
         this.var_545 = 0;
      }
      
      public function update() : void
      {
         this.var_932 += this.var_1984;
         this.var_545 += this.var_932;
         if(this.var_545 > 0)
         {
            this.var_545 = 0;
            this.var_932 = this.var_2354 * -1 * this.var_932;
         }
      }
      
      public function get location() : Number
      {
         return this.var_545;
      }
   }
}
