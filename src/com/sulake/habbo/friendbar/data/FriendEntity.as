package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_914:int;
      
      private var var_738:Boolean;
      
      private var var_1787:Boolean;
      
      private var var_608:String;
      
      private var var_1507:int;
      
      private var var_1679:String;
      
      private var var_1677:String;
      
      private var var_1680:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1680 = param3;
         this.var_1679 = param4;
         this.var_914 = param5;
         this.var_738 = param6;
         this.var_1787 = param7;
         this.var_608 = param8;
         this.var_1507 = param9;
         this.var_1677 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this.var_1787;
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
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_914 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_738 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_1787 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_608 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1507 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1679 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1677 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1680 = param1;
      }
   }
}
