package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.OpenQuestTrackerMessageComposer;
   
   public class QuestCompleted implements IDisposable
   {
       
      
      private var var_189:IFrameWindow;
      
      private var var_61:HabboQuestEngine;
      
      private var var_547:QuestMessageData;
      
      private var var_1074:Boolean = false;
      
      private const const_1927:String = "achievement_bg_001";
      
      public function QuestCompleted(param1:HabboQuestEngine, param2:QuestMessageData)
      {
         super();
         this.var_61 = param1;
         this.var_547 = param2;
         this.localize();
      }
      
      public function dispose() : void
      {
         if(this.var_189)
         {
            this.var_189.dispose();
            this.var_189 = null;
         }
         this.var_1074 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1074;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_61.send(new OpenQuestTrackerMessageComposer());
            this.dispose();
         }
      }
      
      private function localize() : void
      {
         this.var_189 = IFrameWindow(this.var_61.getXmlWindow("QuestCompletedDialog"));
         this.var_189.findChildByTag("close").procedure = this.onClose;
         var _loc1_:IWindow = this.var_189.findChildByName("close_button");
         _loc1_.procedure = this.onClose;
         var _loc2_:String = "quest_" + this.var_547.campaignCode;
         var _loc3_:String = _loc2_ + "_" + this.var_547.localizationCode;
         var _loc4_:* = _loc3_ + ".completed.desc";
         this.var_61.localization.registerParameter(_loc4_,"amount",this.var_547.rewardCurrencyAmount.toString());
         this.var_189.findChildByName("description_txt").caption = this.var_61.localization.getKey(_loc4_);
         var _loc5_:* = _loc2_ + ".completed.currency";
         this.var_61.localization.registerParameter(_loc5_,"amount",this.var_547.rewardCurrencyAmount.toString());
         this.var_189.findChildByName("reward_txt").caption = this.var_61.localization.getKey(_loc5_);
         var _loc6_:IWindow = this.var_189.findChildByName("reward_info_txt");
         _loc6_.caption = this.var_61.localization.getKey(_loc2_ + ".completed.reward");
         _loc6_.mouseThreshold = 0;
         _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onRewardInfo);
         var _loc7_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_189.findChildByName("quest.reward.icon"));
         var _loc8_:String = "icon_" + this.var_547.campaignCode + "_reward_" + this.var_547.rewardCurrencyAmount;
         this.var_61.setImageFromAsset(_loc7_,_loc8_,this.onRewardImageReady);
         var _loc9_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_189.findChildByName("background_image"));
         this.var_61.setImageFromAsset(_loc9_,"QuestCompletedBackground",this.onBackgroundImageReady);
         this.var_189.center();
      }
      
      private function onRewardImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(!this.var_1074 && this.var_189 && _loc2_)
         {
            _loc3_ = IBitmapWrapperWindow(this.var_189.findChildByName("quest.reward.icon"));
            this.var_61.setImageFromAsset(_loc3_,_loc2_.assetName,this.onRewardImageReady);
         }
      }
      
      private function onBackgroundImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(!this.var_1074 && this.var_189 && _loc2_)
         {
            _loc3_ = IBitmapWrapperWindow(this.var_189.findChildByName("background_image"));
            this.var_61.setImageFromAsset(_loc3_,_loc2_.assetName,this.onRewardImageReady);
         }
      }
      
      public function onRewardInfo(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(this.var_547)
         {
            return;
         }
         var _loc3_:String = "catalog.page.quest." + this.var_547.campaignCode;
         Logger.log("Questing->Open Catalog: " + _loc3_);
         this.var_61.openCatalog(_loc3_);
         param1.stopPropagation();
         param1.stopImmediatePropagation();
      }
   }
}
