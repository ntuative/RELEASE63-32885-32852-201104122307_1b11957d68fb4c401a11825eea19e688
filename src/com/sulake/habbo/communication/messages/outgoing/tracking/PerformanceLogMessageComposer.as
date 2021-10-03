package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2595:int = 0;
      
      private var var_1432:String = "";
      
      private var var_1773:String = "";
      
      private var var_2471:String = "";
      
      private var var_2716:String = "";
      
      private var var_1926:int = 0;
      
      private var var_2713:int = 0;
      
      private var var_2715:int = 0;
      
      private var var_1434:int = 0;
      
      private var var_2714:int = 0;
      
      private var var_1435:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2595 = param1;
         this.var_1432 = param2;
         this.var_1773 = param3;
         this.var_2471 = param4;
         this.var_2716 = param5;
         if(param6)
         {
            this.var_1926 = 1;
         }
         else
         {
            this.var_1926 = 0;
         }
         this.var_2713 = param7;
         this.var_2715 = param8;
         this.var_1434 = param9;
         this.var_2714 = param10;
         this.var_1435 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2595,this.var_1432,this.var_1773,this.var_2471,this.var_2716,this.var_1926,this.var_2713,this.var_2715,this.var_1434,this.var_2714,this.var_1435];
      }
   }
}
