package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1331:IHabboTracking;
      
      private var var_1769:Boolean = false;
      
      private var var_2538:int = 0;
      
      private var var_1804:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1331 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1331 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1769 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2538 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1769)
         {
            return;
         }
         ++this.var_1804;
         if(this.var_1804 <= this.var_2538)
         {
            this.var_1331.track("toolbar",param1);
         }
      }
   }
}
