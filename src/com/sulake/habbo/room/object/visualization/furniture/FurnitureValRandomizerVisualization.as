package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_984:int = 20;
      
      private static const const_628:int = 10;
      
      private static const const_1329:int = 31;
      
      private static const const_1330:int = 32;
      
      private static const const_629:int = 30;
       
      
      private var var_301:Array;
      
      private var var_810:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_301 = new Array();
         super();
         super.setAnimation(const_629);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_810)
            {
               this.var_810 = true;
               this.var_301 = new Array();
               this.var_301.push(const_1329);
               this.var_301.push(const_1330);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_628)
         {
            if(this.var_810)
            {
               this.var_810 = false;
               this.var_301 = new Array();
               if(direction == 2)
               {
                  this.var_301.push(const_984 + 5 - param1);
                  this.var_301.push(const_628 + 5 - param1);
               }
               else
               {
                  this.var_301.push(const_984 + param1);
                  this.var_301.push(const_628 + param1);
               }
               this.var_301.push(const_629);
               return;
            }
            super.setAnimation(const_629);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
