package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1627:int;
      
      private var var_1809:Number;
      
      private var var_2578:Number;
      
      private var var_2580:int;
      
      private var var_2581:Number;
      
      private var var_2579:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1627 = param1;
         this.var_1809 = param2;
         this.var_2578 = param3;
         this.var_2581 = param4;
         this.var_2579 = param5;
         this.var_2580 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1627;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1809 < 0)
         {
            return 0;
         }
         return this.var_1809 + (getTimer() - this.var_2580) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2578;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2581;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2579;
      }
   }
}
