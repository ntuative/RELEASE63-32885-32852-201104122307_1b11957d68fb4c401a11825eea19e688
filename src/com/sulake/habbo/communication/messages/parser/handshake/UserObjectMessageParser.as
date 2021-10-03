package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_608:String;
      
      private var var_1043:String;
      
      private var var_2255:String;
      
      private var var_1680:String;
      
      private var var_2258:int;
      
      private var var_2254:String;
      
      private var var_2257:int;
      
      private var var_2253:int;
      
      private var var_2256:int;
      
      private var _respectLeft:int;
      
      private var var_707:int;
      
      private var var_2136:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_608 = param1.readString();
         this.var_1043 = param1.readString();
         this.var_2255 = param1.readString();
         this.var_1680 = param1.readString();
         this.var_2258 = param1.readInteger();
         this.var_2254 = param1.readString();
         this.var_2257 = param1.readInteger();
         this.var_2253 = param1.readInteger();
         this.var_2256 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_707 = param1.readInteger();
         this.var_2136 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function get sex() : String
      {
         return this.var_1043;
      }
      
      public function get customData() : String
      {
         return this.var_2255;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
      
      public function get tickets() : int
      {
         return this.var_2258;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2254;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2257;
      }
      
      public function get directMail() : int
      {
         return this.var_2253;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2256;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_707;
      }
      
      public function get identityId() : int
      {
         return this.var_2136;
      }
   }
}
