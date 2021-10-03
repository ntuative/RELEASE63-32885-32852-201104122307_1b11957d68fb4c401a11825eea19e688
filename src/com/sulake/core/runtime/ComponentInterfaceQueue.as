package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1765:IID;
      
      private var var_1074:Boolean;
      
      private var var_1164:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1765 = param1;
         this.var_1164 = new Array();
         this.var_1074 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1765;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1074;
      }
      
      public function get receivers() : Array
      {
         return this.var_1164;
      }
      
      public function dispose() : void
      {
         if(!this.var_1074)
         {
            this.var_1074 = true;
            this.var_1765 = null;
            while(this.var_1164.length > 0)
            {
               this.var_1164.pop();
            }
            this.var_1164 = null;
         }
      }
   }
}
