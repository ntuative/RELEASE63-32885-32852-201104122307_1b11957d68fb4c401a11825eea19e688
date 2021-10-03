package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1633:int;
      
      private var var_2643:String;
      
      private var var_1439:int;
      
      private var var_1149:int;
      
      private var var_1739:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1633 = param1.readInteger();
         this.var_2643 = param1.readString();
         this.var_1439 = param1.readInteger();
         this.var_1149 = param1.readInteger();
         this.var_1739 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1633;
      }
      
      public function get petName() : String
      {
         return this.var_2643;
      }
      
      public function get level() : int
      {
         return this.var_1439;
      }
      
      public function get petType() : int
      {
         return this.var_1149;
      }
      
      public function get breed() : int
      {
         return this.var_1739;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
