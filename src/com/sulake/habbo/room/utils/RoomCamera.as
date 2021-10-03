package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1010:int = 3;
       
      
      private var var_2692:int = -1;
      
      private var var_2685:int = -2;
      
      private var var_233:Vector3d = null;
      
      private var var_205:Vector3d = null;
      
      private var var_1915:Vector3d;
      
      private var var_2686:Boolean = false;
      
      private var var_2687:Boolean = false;
      
      private var var_2690:Boolean = false;
      
      private var var_2683:Boolean = false;
      
      private var var_2684:int = 0;
      
      private var var_2691:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2688:int = 0;
      
      private var var_2689:int = 0;
      
      private var var_1637:int = -1;
      
      private var var_1509:int = 0;
      
      private var var_1914:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1915 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_205;
      }
      
      public function get targetId() : int
      {
         return this.var_2692;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2685;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1915;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2686;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2687;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2690;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2683;
      }
      
      public function get screenWd() : int
      {
         return this.var_2684;
      }
      
      public function get screenHt() : int
      {
         return this.var_2691;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2688;
      }
      
      public function get roomHt() : int
      {
         return this.var_2689;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1637;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_233 != null && this.var_205 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2692 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1915.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2685 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2686 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2687 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2690 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2683 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2684 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2691 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1914 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2688 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2689 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1637 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_233 == null)
         {
            this.var_233 = new Vector3d();
         }
         if(this.var_233.x != param1.x || this.var_233.y != param1.y || this.var_233.z != param1.z)
         {
            this.var_233.assign(param1);
            this.var_1509 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_233 = null;
         this.var_205 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_205 != null)
         {
            return;
         }
         this.var_205 = new Vector3d();
         this.var_205.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_205 == null)
         {
            this.var_205 = new Vector3d();
         }
         this.var_205.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_233 != null && this.var_205 != null)
         {
            ++this.var_1509;
            if(this.var_1914)
            {
               this.var_1914 = false;
               this.var_205 = this.var_233;
               this.var_233 = null;
               return;
            }
            _loc4_ = Vector3d.dif(this.var_233,this.var_205);
            if(_loc4_.length <= param2)
            {
               this.var_205 = this.var_233;
               this.var_233 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_1010 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1509 <= const_1010)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_205 = Vector3d.sum(this.var_205,_loc4_);
            }
         }
      }
   }
}
