package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1439:int;
      
      private var var_312:String;
      
      private var var_2237:int;
      
      private var var_2236:int;
      
      private var var_1784:int;
      
      private var var_2238:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1439 = param1.readInteger();
         this.var_312 = param1.readString();
         this.var_2237 = param1.readInteger();
         this.var_2236 = param1.readInteger();
         this.var_1784 = param1.readInteger();
         this.var_2238 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_312;
      }
      
      public function get level() : int
      {
         return this.var_1439;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2237;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2236;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1784;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2238;
      }
   }
}
