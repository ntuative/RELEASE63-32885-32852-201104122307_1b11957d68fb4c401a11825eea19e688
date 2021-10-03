package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1757:int;
      
      private var var_2429:int;
      
      private var var_825:int;
      
      private var var_506:Number;
      
      private var var_2428:Boolean;
      
      private var var_2427:int;
      
      private var var_1756:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_506);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2429 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2427 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2428 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_825;
         if(this.var_825 == 1)
         {
            this.var_506 = param1;
            this.var_1757 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_825);
            this.var_506 = this.var_506 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2428 && param3 - this.var_1757 >= this.var_2429)
         {
            this.var_825 = 0;
            if(this.var_1756 < this.var_2427)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1756;
               this.var_1757 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
