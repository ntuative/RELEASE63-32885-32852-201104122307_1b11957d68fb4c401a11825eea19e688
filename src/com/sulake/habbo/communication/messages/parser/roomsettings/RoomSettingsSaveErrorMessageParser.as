package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1895:int = 1;
      
      public static const const_1826:int = 2;
      
      public static const const_1901:int = 3;
      
      public static const const_2020:int = 4;
      
      public static const const_1490:int = 5;
      
      public static const const_1866:int = 6;
      
      public static const const_1704:int = 7;
      
      public static const const_1581:int = 8;
      
      public static const const_1916:int = 9;
      
      public static const const_1614:int = 10;
      
      public static const const_1759:int = 11;
      
      public static const const_1499:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1659:int;
      
      private var var_1431:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1659 = param1.readInteger();
         this.var_1431 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1659;
      }
      
      public function get info() : String
      {
         return this.var_1431;
      }
   }
}
