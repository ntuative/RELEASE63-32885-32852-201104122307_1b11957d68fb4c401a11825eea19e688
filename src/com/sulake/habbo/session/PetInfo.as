package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1633:int;
      
      private var var_1439:int;
      
      private var var_2392:int;
      
      private var var_2193:int;
      
      private var var_2388:int;
      
      private var _energy:int;
      
      private var var_2389:int;
      
      private var _nutrition:int;
      
      private var var_2393:int;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_2194:int;
      
      private var var_523:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1633;
      }
      
      public function get level() : int
      {
         return this.var_1439;
      }
      
      public function get levelMax() : int
      {
         return this.var_2392;
      }
      
      public function get experience() : int
      {
         return this.var_2193;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2388;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2389;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2393;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2194;
      }
      
      public function get age() : int
      {
         return this.var_523;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1633 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1439 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2392 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2193 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2388 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2389 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2393 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2194 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_523 = param1;
      }
   }
}
