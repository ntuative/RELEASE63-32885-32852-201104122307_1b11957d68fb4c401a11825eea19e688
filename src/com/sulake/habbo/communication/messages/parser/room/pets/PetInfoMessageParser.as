package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1633:int;
      
      private var _name:String;
      
      private var var_1439:int;
      
      private var var_2192:int;
      
      private var var_2193:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_608:String;
      
      private var var_2191:int;
      
      private var var_2197:int;
      
      private var var_2195:int;
      
      private var var_2194:int;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_523:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1633;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1439;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2192;
      }
      
      public function get experience() : int
      {
         return this.var_2193;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2191;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2197;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2195;
      }
      
      public function get respect() : int
      {
         return this.var_2194;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_523;
      }
      
      public function flush() : Boolean
      {
         this.var_1633 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1633 = param1.readInteger();
         this._name = param1.readString();
         this.var_1439 = param1.readInteger();
         this.var_2192 = param1.readInteger();
         this.var_2193 = param1.readInteger();
         this.var_2191 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2195 = param1.readInteger();
         this.var_608 = param1.readString();
         this.var_2194 = param1.readInteger();
         this.var_2196 = param1.readInteger();
         this.var_523 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
