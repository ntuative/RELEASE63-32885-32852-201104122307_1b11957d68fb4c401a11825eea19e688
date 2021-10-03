package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_934:int = 500;
      
      private static var var_954:Vector3d = new Vector3d();
       
      
      private var var_508:Vector3d;
      
      private var var_95:Vector3d;
      
      private var var_1783:int = 0;
      
      private var var_2497:int;
      
      private var var_1171:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_508 = new Vector3d();
         this.var_95 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1783;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_95 = null;
         this.var_508 = null;
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1171 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               this.var_95.assign(param1.loc);
               _loc3_ = _loc2_.targetLoc;
               this.var_2497 = this.var_1783;
               this.var_508.assign(_loc3_);
               this.var_508.sub(this.var_95);
            }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this.var_508.length > 0)
         {
            _loc2_ = param1 - this.var_2497;
            if(_loc2_ > this.var_1171)
            {
               _loc2_ = this.var_1171;
            }
            var_954.assign(this.var_508);
            var_954.mul(_loc2_ / Number(this.var_1171));
            var_954.add(this.var_95);
            if(object != null)
            {
               object.setLocation(var_954);
            }
            if(_loc2_ == this.var_1171)
            {
               this.var_508.x = 0;
               this.var_508.y = 0;
               this.var_508.z = 0;
            }
         }
         this.var_1783 = param1;
      }
   }
}
