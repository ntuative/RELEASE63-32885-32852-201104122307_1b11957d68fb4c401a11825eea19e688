package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_914:int;
      
      private var var_738:Boolean;
      
      private var var_1678:Boolean;
      
      private var var_608:String;
      
      private var var_1507:int;
      
      private var var_1679:String;
      
      private var var_1677:String;
      
      private var var_1680:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_914 = param1.readInteger();
         this.var_738 = param1.readBoolean();
         this.var_1678 = param1.readBoolean();
         this.var_608 = param1.readString();
         this.var_1507 = param1.readInteger();
         this.var_1679 = param1.readString();
         this.var_1677 = param1.readString();
         this.var_1680 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_914;
      }
      
      public function get online() : Boolean
      {
         return this.var_738;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1678;
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function get categoryId() : int
      {
         return this.var_1507;
      }
      
      public function get motto() : String
      {
         return this.var_1679;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1677;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
   }
}
