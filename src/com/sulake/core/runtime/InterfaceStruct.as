package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1525:IID;
      
      private var var_1927:String;
      
      private var var_107:IUnknown;
      
      private var var_818:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1525 = param1;
         this.var_1927 = getQualifiedClassName(this.var_1525);
         this.var_107 = param2;
         this.var_818 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1525;
      }
      
      public function get iis() : String
      {
         return this.var_1927;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_107;
      }
      
      public function get references() : uint
      {
         return this.var_818;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_107 == null;
      }
      
      public function dispose() : void
      {
         this.var_1525 = null;
         this.var_1927 = null;
         this.var_107 = null;
         this.var_818 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_818;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_818) : uint(0);
      }
   }
}
