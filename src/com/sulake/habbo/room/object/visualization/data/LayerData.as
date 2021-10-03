package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_822:String = "";
      
      public static const const_431:int = 0;
      
      public static const const_476:int = 255;
      
      public static const const_888:Boolean = false;
      
      public static const const_478:int = 0;
      
      public static const const_540:int = 0;
      
      public static const const_427:int = 0;
      
      public static const const_1122:int = 1;
      
      public static const const_1140:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2229:String = "";
      
      private var var_2053:int = 0;
      
      private var var_2227:int = 255;
      
      private var var_2768:Boolean = false;
      
      private var var_2769:int = 0;
      
      private var var_2770:int = 0;
      
      private var var_2767:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2229 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2229;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2053 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2053;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2227 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2227;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2768 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2768;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2769 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2769;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2770 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2770;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2767 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2767;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
