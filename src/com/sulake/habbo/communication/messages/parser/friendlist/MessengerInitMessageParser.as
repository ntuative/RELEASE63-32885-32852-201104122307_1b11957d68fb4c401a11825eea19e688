package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2520:int;
      
      private var var_2519:int;
      
      private var var_2517:int;
      
      private var var_2518:int;
      
      private var var_103:Array;
      
      private var var_237:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_103 = new Array();
         this.var_237 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2520 = param1.readInteger();
         this.var_2519 = param1.readInteger();
         this.var_2517 = param1.readInteger();
         this.var_2518 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_103.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_237.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2520;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2519;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2517;
      }
      
      public function get categories() : Array
      {
         return this.var_103;
      }
      
      public function get friends() : Array
      {
         return this.var_237;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2518;
      }
   }
}
