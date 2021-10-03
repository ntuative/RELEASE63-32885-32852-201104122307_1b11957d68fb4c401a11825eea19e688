package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_154:Number;
      
      private var var_155:Number;
      
      private var var_1879:Number;
      
      private var var_1881:Number;
      
      private var var_1880:Number;
      
      private var var_1207:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_523:int = 0;
      
      private var var_991:int;
      
      private var var_2651:Boolean = false;
      
      private var var_1882:Boolean = false;
      
      private var var_1424:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1882;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_523;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_154 = param2;
         this.var_155 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1879 = this._x - this._direction.x * param6;
         this.var_1881 = this.var_154 - this._direction.y * param6;
         this.var_1880 = this.var_155 - this._direction.z * param6;
         this.var_523 = 0;
         this.var_1207 = false;
         this.var_991 = param7;
         this.var_2651 = param8;
         this._frames = param9;
         this.var_1882 = param10;
         this._alphaMultiplier = 1;
         this.var_1424 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_523;
         if(this.var_523 == this.var_991)
         {
            this.ignite();
         }
         if(this.var_1882)
         {
            if(this.var_523 / this.var_991 > this.var_1424)
            {
               this._alphaMultiplier = (this.var_991 - this.var_523) / (this.var_991 * (1 - this.var_1424));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_523 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2651;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_523 <= this.var_991;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function get z() : Number
      {
         return this.var_155;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_154 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_155 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1879;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1207 = true;
         this.var_1879 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1881;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1207 = true;
         this.var_1881 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1880;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1207 = true;
         this.var_1880 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1207;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_154,this.var_155].toString();
      }
   }
}
