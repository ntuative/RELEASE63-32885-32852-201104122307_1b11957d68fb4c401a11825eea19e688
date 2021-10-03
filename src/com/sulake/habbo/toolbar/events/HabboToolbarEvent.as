package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_68:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_457:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_846:String = "HTE_TOOLBAR_RESIZED";
       
      
      private var var_817:String;
      
      private var var_516:String;
      
      private var var_1228:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_817 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_817;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_516 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_516;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1228 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1228;
      }
   }
}
