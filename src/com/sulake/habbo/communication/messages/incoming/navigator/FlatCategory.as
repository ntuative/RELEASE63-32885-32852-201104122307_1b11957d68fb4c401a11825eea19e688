package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1999:int;
      
      private var var_2252:String;
      
      private var var_307:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1999 = param1.readInteger();
         this.var_2252 = param1.readString();
         this.var_307 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1999;
      }
      
      public function get nodeName() : String
      {
         return this.var_2252;
      }
      
      public function get visible() : Boolean
      {
         return this.var_307;
      }
   }
}
