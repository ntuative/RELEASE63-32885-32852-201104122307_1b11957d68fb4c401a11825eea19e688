package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2653:int;
      
      private var var_2655:int;
      
      private var var_2654:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2653 = param1;
         this.var_2655 = param2;
         this.var_2654 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2653,this.var_2655,this.var_2654];
      }
      
      public function dispose() : void
      {
      }
   }
}
