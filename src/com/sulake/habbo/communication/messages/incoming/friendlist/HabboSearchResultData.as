package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2200:int;
      
      private var var_1712:String;
      
      private var var_2320:String;
      
      private var var_2322:Boolean;
      
      private var var_2325:Boolean;
      
      private var var_2324:int;
      
      private var var_2321:String;
      
      private var var_2323:String;
      
      private var var_1680:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2200 = param1.readInteger();
         this.var_1712 = param1.readString();
         this.var_2320 = param1.readString();
         this.var_2322 = param1.readBoolean();
         this.var_2325 = param1.readBoolean();
         param1.readString();
         this.var_2324 = param1.readInteger();
         this.var_2321 = param1.readString();
         this.var_2323 = param1.readString();
         this.var_1680 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2200;
      }
      
      public function get avatarName() : String
      {
         return this.var_1712;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2320;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2322;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2325;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2324;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2321;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2323;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
   }
}
