package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_132:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_112:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_958:int = 2;
      
      public static const const_819:int = 3;
      
      public static const const_1634:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1679:String = "";
      
      private var var_2203:int;
      
      private var var_2832:int = 0;
      
      private var var_2830:int = 0;
      
      private var var_608:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_271:Array;
      
      private var var_1562:int = 0;
      
      private var var_2827:String = "";
      
      private var var_2829:int = 0;
      
      private var var_2828:int = 0;
      
      private var var_2011:Boolean = false;
      
      private var var_1680:String = "";
      
      private var var_2850:Boolean = false;
      
      private var var_2843:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2847:Boolean = false;
      
      private var var_2842:Boolean = false;
      
      private var var_2845:Boolean = false;
      
      private var var_2844:Boolean = false;
      
      private var var_2846:Boolean = false;
      
      private var var_2849:Boolean = false;
      
      private var var_2848:int = 0;
      
      private var var_2009:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_271 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1679 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1679;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2203 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2203;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2832 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2832;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2830 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2830;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_608 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_271 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_271;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1562 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1562;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2827 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2827;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2850 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2850;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2847 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2847;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2842 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2842;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2845 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2845;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2844 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2844;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2846 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2846;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2849 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2849;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2848 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2848;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2843 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2843;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2009 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2009;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2829 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2829;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2828 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2828;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2011 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2011;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1680 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
   }
}
