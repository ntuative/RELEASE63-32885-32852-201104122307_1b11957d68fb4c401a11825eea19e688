package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_900:Array;
      
      private var var_2499:String;
      
      private var var_2498:String;
      
      private var var_2500:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_900 = param1;
         this.var_2499 = param2;
         this.var_2498 = param3;
         this.var_2500 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_900;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2499;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2498;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2500;
      }
   }
}
