package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ActionDefinition extends Triggerable
   {
       
      
      private var _type:int;
      
      private var var_2282:int;
      
      private var var_1673:Array;
      
      public function ActionDefinition(param1:IMessageDataWrapper)
      {
         this.var_1673 = new Array();
         super(param1);
         this._type = param1.readInteger();
         this.var_2282 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1673.push(param1.readInteger());
            _loc3_++;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      override public function get code() : int
      {
         return this._type;
      }
      
      public function get delayInPulses() : int
      {
         return this.var_2282;
      }
      
      public function get conflictingTriggers() : Array
      {
         return this.var_1673;
      }
   }
}
