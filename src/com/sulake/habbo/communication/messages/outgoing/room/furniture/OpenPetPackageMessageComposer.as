package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_352:int;
      
      private var var_2643:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_352 = param1;
         this.var_2643 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_352,this.var_2643];
      }
      
      public function dispose() : void
      {
      }
   }
}
