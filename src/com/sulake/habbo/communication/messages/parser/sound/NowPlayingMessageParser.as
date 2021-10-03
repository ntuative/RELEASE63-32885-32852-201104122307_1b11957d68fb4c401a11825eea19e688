package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1875:int;
      
      private var _currentPosition:int;
      
      private var var_1878:int;
      
      private var var_1877:int;
      
      private var var_1876:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1875;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1878;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1877;
      }
      
      public function get syncCount() : int
      {
         return this.var_1876;
      }
      
      public function flush() : Boolean
      {
         this.var_1875 = -1;
         this._currentPosition = -1;
         this.var_1878 = -1;
         this.var_1877 = -1;
         this.var_1876 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1875 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1878 = param1.readInteger();
         this.var_1877 = param1.readInteger();
         this.var_1876 = param1.readInteger();
         return true;
      }
   }
}
