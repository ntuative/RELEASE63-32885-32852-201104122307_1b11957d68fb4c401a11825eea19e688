package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2410:int;
      
      private var var_2408:int;
      
      private var var_738:Boolean;
      
      private var var_2411:int;
      
      private var var_2409:int;
      
      private var var_2413:int;
      
      private var var_2412:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2410 = param1.readInteger();
         this.var_2408 = param1.readInteger();
         this.var_738 = param1.readBoolean();
         this.var_2411 = param1.readInteger();
         this.var_2409 = param1.readInteger();
         this.var_2413 = param1.readInteger();
         this.var_2412 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2410;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2408;
      }
      
      public function get online() : Boolean
      {
         return this.var_738;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2411;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2409;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2413;
      }
      
      public function get banCount() : int
      {
         return this.var_2412;
      }
   }
}
