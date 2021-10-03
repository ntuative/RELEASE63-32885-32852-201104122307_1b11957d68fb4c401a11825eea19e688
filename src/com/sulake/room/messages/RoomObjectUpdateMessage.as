package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_95:IVector3d;
      
      protected var var_385:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         this.var_95 = param1;
         this.var_385 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return this.var_95;
      }
      
      public function get dir() : IVector3d
      {
         return this.var_385;
      }
   }
}
