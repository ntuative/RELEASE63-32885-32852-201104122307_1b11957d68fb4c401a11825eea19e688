package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1941:String = "";
      
      private var var_1826:String = "";
      
      private var var_2547:String = "";
      
      private var var_2551:Number = 0;
      
      private var var_2553:Number = 0;
      
      private var var_2549:Number = 0;
      
      private var var_2545:Number = 0;
      
      private var var_2550:Boolean = false;
      
      private var var_2546:Boolean = false;
      
      private var var_2552:Boolean = false;
      
      private var var_2548:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1941 = param2;
         this.var_1826 = param3;
         this.var_2547 = param4;
         this.var_2551 = param5;
         this.var_2553 = param6;
         this.var_2549 = param7;
         this.var_2545 = param8;
         this.var_2550 = param9;
         this.var_2546 = param10;
         this.var_2552 = param11;
         this.var_2548 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1941;
      }
      
      public function get canvasId() : String
      {
         return this.var_1826;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2547;
      }
      
      public function get screenX() : Number
      {
         return this.var_2551;
      }
      
      public function get screenY() : Number
      {
         return this.var_2553;
      }
      
      public function get localX() : Number
      {
         return this.var_2549;
      }
      
      public function get localY() : Number
      {
         return this.var_2545;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2550;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2546;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2552;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2548;
      }
   }
}
