package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_157:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_151:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1116:String;
      
      private var var_1365:Array;
      
      private var var_1141:Array;
      
      private var var_1934:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1116 = param2;
         this.var_1365 = param3;
         this.var_1141 = param4;
         if(this.var_1141 == null)
         {
            this.var_1141 = [];
         }
         this.var_1934 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1116;
      }
      
      public function get choices() : Array
      {
         return this.var_1365.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1141.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1934;
      }
   }
}
