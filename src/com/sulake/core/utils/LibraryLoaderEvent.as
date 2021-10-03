package com.sulake.core.utils
{
   import flash.events.Event;
   
   public class LibraryLoaderEvent extends Event
   {
      
      public static const LIBRARY_LOADER_EVENT_COMPLETE:String = "LIBRARY_LOADER_EVENT_COMPLETE";
      
      public static const LIBRARY_LOADER_EVENT_PROGRESS:String = "LIBRARY_LOADER_EVENT_PROGRESS";
      
      public static const LIBRARY_LOADER_EVENT_UNLOAD:String = "LIBRARY_LOADER_EVENT_UNLOAD";
      
      public static const LIBRARY_LOADER_EVENT_STATUS:String = "LIBRARY_LOADER_EVENT_STATUS";
      
      public static const LIBRARY_LOADER_EVENT_ERROR:String = "LIBRARY_LOADER_EVENT_ERROR";
      
      public static const LIBRARY_LOADER_EVENT_DEBUG:String = "LIBRARY_LOADER_EVENT_DEBUG";
      
      public static const LIBRARY_LOADER_EVENT_DISPOSE:String = "LIBRARY_LOADER_EVENT_DISPOSE";
       
      
      private var var_402:int;
      
      private var var_1828:uint;
      
      private var var_1827:uint;
      
      private var var_2595:uint;
      
      public function LibraryLoaderEvent(param1:String, param2:int, param3:uint, param4:uint, param5:uint)
      {
         this.var_402 = param2;
         this.var_1828 = param3;
         this.var_1827 = param4;
         this.var_2595 = param5;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_402;
      }
      
      public function get bytesTotal() : uint
      {
         return this.var_1828;
      }
      
      public function get bytesLoaded() : uint
      {
         return this.var_1827;
      }
      
      public function get elapsedTime() : uint
      {
         return this.var_2595;
      }
      
      override public function clone() : Event
      {
         return new LibraryLoaderEvent(type,this.var_402,this.var_1828,this.var_1827,this.elapsedTime);
      }
   }
}
