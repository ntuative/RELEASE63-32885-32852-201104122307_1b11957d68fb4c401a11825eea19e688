package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2484:Number = 0.0;
      
      private var var_2481:Number = 0.0;
      
      private var var_2483:Number = 0.0;
      
      private var var_2482:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2484 = param1;
         this.var_2481 = param2;
         this.var_2483 = param3;
         this.var_2482 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2484;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2481;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2483;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2482;
      }
   }
}
