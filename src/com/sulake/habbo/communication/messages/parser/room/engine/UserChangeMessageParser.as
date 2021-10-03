package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_608:String;
      
      private var var_1043:String;
      
      private var var_2020:String;
      
      private var var_2203:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function get sex() : String
      {
         return this.var_1043;
      }
      
      public function get customInfo() : String
      {
         return this.var_2020;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2203;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_608 = "";
         this.var_1043 = "";
         this.var_2020 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_608 = param1.readString();
         this.var_1043 = param1.readString();
         this.var_2020 = param1.readString();
         this.var_2203 = param1.readInteger();
         if(this.var_1043)
         {
            this.var_1043 = this.var_1043.toUpperCase();
         }
         return true;
      }
   }
}
