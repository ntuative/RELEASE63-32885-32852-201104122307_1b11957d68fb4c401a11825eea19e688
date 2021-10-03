package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1439:int;
      
      private var var_1636:int;
      
      private var var_2236:int;
      
      private var var_1784:int;
      
      private var var_1438:int;
      
      private var var_2290:String = "";
      
      private var var_2563:String = "";
      
      private var var_2564:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1439 = param1.readInteger();
         this.var_2290 = param1.readString();
         this.var_1636 = param1.readInteger();
         this.var_2236 = param1.readInteger();
         this.var_1784 = param1.readInteger();
         this.var_1438 = param1.readInteger();
         this.var_2564 = param1.readInteger();
         this.var_2563 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1439;
      }
      
      public function get points() : int
      {
         return this.var_1636;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2236;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1784;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1438;
      }
      
      public function get badgeID() : String
      {
         return this.var_2290;
      }
      
      public function get achievementID() : int
      {
         return this.var_2564;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2563;
      }
   }
}
