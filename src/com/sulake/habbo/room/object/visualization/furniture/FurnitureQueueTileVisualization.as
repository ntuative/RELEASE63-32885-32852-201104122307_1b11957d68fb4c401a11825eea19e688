package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1330:int = 3;
      
      private static const const_1388:int = 2;
      
      private static const const_1386:int = 1;
      
      private static const const_1387:int = 15;
       
      
      private var var_301:Array;
      
      private var var_1202:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_301 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1388)
         {
            this.var_301 = new Array();
            this.var_301.push(const_1386);
            this.var_1202 = const_1387;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1202 > 0)
         {
            --this.var_1202;
         }
         if(this.var_1202 == 0)
         {
            if(this.var_301.length > 0)
            {
               super.setAnimation(this.var_301.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
