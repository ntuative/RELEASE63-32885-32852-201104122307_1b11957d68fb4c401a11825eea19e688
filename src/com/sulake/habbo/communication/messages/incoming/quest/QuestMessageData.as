package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2217:String;
      
      private var var_2213:int;
      
      private var var_2216:int;
      
      private var var_1990:int;
      
      private var _id:int;
      
      private var var_2211:Boolean;
      
      private var _type:String;
      
      private var var_1651:String;
      
      private var var_1650:int;
      
      private var var_2215:String;
      
      private var var_2214:int;
      
      private var var_2212:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2217 = param1.readString();
         this.var_2213 = param1.readInteger();
         this.var_2216 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2211 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1651 = param1.readString();
         this.var_1650 = param1.readInteger();
         this.var_2215 = param1.readString();
         this.var_2214 = param1.readInteger();
         this.var_2212 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1651 = "";
         this.var_1650 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_2217;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2213;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2216;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2211;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1651;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1650;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2215;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2214;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2212;
      }
   }
}
