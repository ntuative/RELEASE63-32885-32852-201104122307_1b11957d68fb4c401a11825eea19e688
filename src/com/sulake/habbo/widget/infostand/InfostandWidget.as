package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.enums.RoomWidgetInfostandExtraParamEnum;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSongUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private const const_1780:String = "infostand_user_view";
      
      private const const_1783:String = "infostand_furni_view";
      
      private const const_1781:String = "infostand_pet_view";
      
      private const const_1779:String = "infostand_bot_view";
      
      private const const_1782:String = "infostand_jukebox_view";
      
      private const const_1778:String = "infostand_songdisk_view";
      
      private var var_1106:InfoStandFurniView;
      
      private var var_179:InfoStandUserView;
      
      private var var_353:InfoStandPetView;
      
      private var var_415:InfoStandBotView;
      
      private var var_907:InfoStandJukeboxView;
      
      private var var_908:InfoStandSongDiskView;
      
      private var var_2263:Array;
      
      private var var_1366:InfostandUserData;
      
      private var var_611:InfostandFurniData;
      
      private var _petData:InfoStandPetData;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_151:Timer;
      
      private var _config:IHabboConfigurationManager;
      
      private var _catalog:IHabboCatalog;
      
      private const const_2045:int = 3000;
      
      public function InfostandWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager, param5:IHabboCatalog)
      {
         super(param1,param2,param3);
         this._config = param4;
         this._catalog = param5;
         this.var_1106 = new InfoStandFurniView(this,this.const_1783,this._catalog);
         this.var_179 = new InfoStandUserView(this,this.const_1780);
         this.var_353 = new InfoStandPetView(this,this.const_1781,this._catalog);
         this.var_415 = new InfoStandBotView(this,this.const_1779);
         this.var_907 = new InfoStandJukeboxView(this,this.const_1782,this._catalog);
         this.var_908 = new InfoStandSongDiskView(this,this.const_1778,this._catalog);
         this.var_1366 = new InfostandUserData();
         this.var_611 = new InfostandFurniData();
         this._petData = new InfoStandPetData();
         this.var_151 = new Timer(this.const_2045);
         this.var_151.addEventListener(TimerEvent.TIMER,this.onUpdateTimer);
         this.mainContainer.visible = false;
      }
      
      override public function get mainWindow() : IWindow
      {
         return this.mainContainer;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_73,HabboWindowStyle.const_44,HabboWindowParam.const_44,new Rectangle(0,0,50,100)) as IWindowContainer;
            this._mainContainer.tags.push("room_widget_infostand");
            this._mainContainer.background = true;
            this._mainContainer.color = 0;
         }
         return this._mainContainer;
      }
      
      public function getXmlWindow(param1:String) : IWindow
      {
         var asset:IAsset = null;
         var xmlAsset:XmlAsset = null;
         var name:String = param1;
         var window:IWindow = null;
         try
         {
            asset = assets.getAssetByName(name);
            xmlAsset = XmlAsset(asset);
            window = windowManager.buildFromXML(XML(xmlAsset.content));
         }
         catch(e:Error)
         {
            Logger.log("[InfoStandWidget] Missing window XML: " + name);
         }
         return window;
      }
      
      override public function dispose() : void
      {
         if(this.var_151)
         {
            this.var_151.stop();
         }
         this.var_151 = null;
         if(this.var_179)
         {
            this.var_179.dispose();
         }
         this.var_179 = null;
         if(this.var_1106)
         {
            this.var_1106.dispose();
         }
         this.var_1106 = null;
         if(this.var_415)
         {
            this.var_415.dispose();
         }
         this.var_415 = null;
         if(this.var_353)
         {
            this.var_353.dispose();
         }
         this.var_353 = null;
         if(this.var_907)
         {
            this.var_907.dispose();
         }
         this.var_907 = null;
         if(this.var_908)
         {
            this.var_908.dispose();
         }
         this.var_908 = null;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_232,this.onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_109,this.onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_163,this.onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_136,this.onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_132,this.onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_112,this.onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_308,this.onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_179,this.onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_170,this.onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_141,this.onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_786,this.onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_110,this.onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,this.onPetCommands);
         param1.addEventListener(RoomWidgetSongUpdateEvent.const_399,this.onSongUpdate);
         param1.addEventListener(RoomWidgetSongUpdateEvent.const_424,this.onSongUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_232,this.onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_109,this.onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_163,this.onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_136,this.onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_132,this.onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_112,this.onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_308,this.onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_179,this.onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_170,this.onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_141,this.onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_786,this.onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_110,this.onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,this.onPetCommands);
         param1.removeEventListener(RoomWidgetSongUpdateEvent.const_399,this.onSongUpdate);
         param1.removeEventListener(RoomWidgetSongUpdateEvent.const_424,this.onSongUpdate);
      }
      
      public function get userData() : InfostandUserData
      {
         return this.var_1366;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return this.var_611;
      }
      
      public function get petData() : InfoStandPetData
      {
         return this._petData;
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(this.var_353 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_388,this.var_353.getCurrentPetId()));
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userData.setData(param1);
         this.var_179.update(param1);
         this.selectView(this.const_1780);
         if(this.var_151)
         {
            this.var_151.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userData.setData(param1);
         this.var_415.update(param1);
         this.selectView(this.const_1779);
         if(this.var_151)
         {
            this.var_151.stop();
         }
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         this.furniData.setData(param1);
         if(param1.extraParam == RoomWidgetInfostandExtraParamEnum.const_698)
         {
            this.var_907.update(param1);
            this.selectView(this.const_1782);
         }
         else if(param1.extraParam.indexOf(RoomWidgetInfostandExtraParamEnum.const_400) != -1)
         {
            this.var_908.update(param1);
            this.selectView(this.const_1778);
         }
         else
         {
            this.var_1106.update(param1);
            this.selectView(this.const_1783);
         }
         if(this.var_151)
         {
            this.var_151.stop();
         }
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this.petData.setData(param1);
         this.userData.petRespectLeft = param1.petRespectLeft;
         this.var_353.update(this.petData);
         this.selectView(this.const_1781);
         if(this.var_151)
         {
            this.var_151.start();
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         this.var_353.updateEnabledTrainingCommands(param1.id,new CommandConfiguration(param1.allCommands,param1.enabledCommands));
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            this.var_2263 = param1.tags;
         }
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            this.var_179.setTags(param1.tags);
         }
         else
         {
            this.var_179.setTags(param1.tags,this.var_2263);
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         if(this.userData.isBot())
         {
            this.var_415.image = param1.image;
         }
         else
         {
            this.var_179.image = param1.image;
            this.var_179.setMotto(param1.customInfo,param1.isOwnUser);
            this.var_179.achievementScore = param1.achievementScore;
         }
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         this.userData.badges = param1.badges;
         this.var_179.clearBadges();
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = this.userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(this.userData.isBot())
            {
               this.var_415.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               this.var_179.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == this.userData.groupBadgeId)
         {
            this.var_179.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_327,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_136:
               _loc2_ = param1.id == this.var_611.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_163:
               if(this.var_179 != null && this.var_179.window != null && this.var_179.window.visible)
               {
                  _loc2_ = param1.id == this.var_1366.userRoomId;
                  break;
               }
               if(this.var_353 != null && this.var_353.window != null && this.var_353.window.visible)
               {
                  _loc2_ = param1.id == this._petData.roomIndex;
                  break;
               }
               if(this.var_415 != null && this.var_415.window != null && this.var_415.window.visible)
               {
                  _loc2_ = param1.id == this.var_1366.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            this.close();
         }
      }
      
      private function onSongUpdate(param1:RoomWidgetSongUpdateEvent) : void
      {
         this.var_907.updateSongInfo(param1);
         this.var_908.updateSongInfo(param1);
      }
      
      public function close() : void
      {
         this.hideChildren();
         if(this.var_151)
         {
            this.var_151.stop();
         }
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         this.close();
         if(this.var_151)
         {
            this.var_151.stop();
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(this._mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._mainContainer.numChildren)
            {
               this._mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function selectView(param1:String) : void
      {
         this.hideChildren();
         var _loc2_:IWindow = this.mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         this.mainContainer.visible = true;
         this.mainContainer.width = _loc2_.width;
         this.mainContainer.height = _loc2_.height;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mainContainer.numChildren)
         {
            _loc1_ = this.mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               this.mainContainer.width = _loc1_.width;
               this.mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
   }
}
