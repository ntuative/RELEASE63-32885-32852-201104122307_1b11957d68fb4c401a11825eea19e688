package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var _id:int;
      
      private var _index:int;
      
      private var var_2137:int;
      
      private var var_2329:Boolean = false;
      
      private var _rgb:uint;
      
      private var var_1730:uint;
      
      private var var_1731:uint;
      
      private var _b:uint;
      
      private var var_1898:Number;
      
      private var var_1897:Number;
      
      private var var_1899:Number;
      
      private var var_848:ColorTransform;
      
      public function PartColor(param1:XML)
      {
         super();
         this._id = parseInt(param1.@id);
         this._index = parseInt(param1.@index);
         this.var_2137 = parseInt(param1.@club);
         this.var_2329 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1730 = this._rgb >> 16 & 255;
         this.var_1731 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1898 = this.var_1730 / 255 * 1;
         this.var_1897 = this.var_1731 / 255 * 1;
         this.var_1899 = this._b / 255 * 1;
         this.var_848 = new ColorTransform(this.var_1898,this.var_1897,this.var_1899);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_848;
      }
      
      public function get redMultiplier() : Number
      {
         return this.var_1898;
      }
      
      public function get greenMultiplier() : Number
      {
         return this.var_1897;
      }
      
      public function get blueMultiplier() : Number
      {
         return this.var_1899;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1730;
      }
      
      public function get g() : uint
      {
         return this.var_1731;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2137;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2329;
      }
   }
}
