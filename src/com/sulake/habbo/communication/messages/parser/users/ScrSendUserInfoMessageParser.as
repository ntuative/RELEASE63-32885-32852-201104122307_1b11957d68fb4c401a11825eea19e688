package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1882:int = 1;
      
      public static const const_1679:int = 2;
       
      
      private var var_1001:String;
      
      private var var_2860:int;
      
      private var var_2863:int;
      
      private var var_2856:int;
      
      private var var_2861:int;
      
      private var var_2858:Boolean;
      
      private var var_2260:Boolean;
      
      private var var_2262:int;
      
      private var var_2261:int;
      
      private var var_2859:Boolean;
      
      private var var_2857:int;
      
      private var var_2862:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1001 = param1.readString();
         this.var_2860 = param1.readInteger();
         this.var_2863 = param1.readInteger();
         this.var_2856 = param1.readInteger();
         this.var_2861 = param1.readInteger();
         this.var_2858 = param1.readBoolean();
         this.var_2260 = param1.readBoolean();
         this.var_2262 = param1.readInteger();
         this.var_2261 = param1.readInteger();
         this.var_2859 = param1.readBoolean();
         this.var_2857 = param1.readInteger();
         this.var_2862 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1001;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2860;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2863;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2856;
      }
      
      public function get responseType() : int
      {
         return this.var_2861;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2858;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2260;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2262;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2261;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2859;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2857;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2862;
      }
   }
}
