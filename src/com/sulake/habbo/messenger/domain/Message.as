package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_908:int = 1;
      
      public static const const_863:int = 2;
      
      public static const const_771:int = 3;
      
      public static const const_1154:int = 4;
      
      public static const const_839:int = 5;
      
      public static const const_1161:int = 6;
       
      
      private var _type:int;
      
      private var var_1167:int;
      
      private var var_2414:String;
      
      private var var_2814:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1167 = param2;
         this.var_2414 = param3;
         this.var_2814 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2414;
      }
      
      public function get time() : String
      {
         return this.var_2814;
      }
      
      public function get senderId() : int
      {
         return this.var_1167;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
