package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2947:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_83 = param1.desktop;
         var_65 = param1.var_1309 as WindowController;
         var_173 = param1.var_1306 as WindowController;
         var_153 = param1.renderer;
         var_870 = param1.var_1307;
         param2.begin();
         param2.end();
         param1.desktop = var_83;
         param1.var_1309 = var_65;
         param1.var_1306 = var_173;
         param1.renderer = var_153;
         param1.var_1307 = var_870;
      }
   }
}
