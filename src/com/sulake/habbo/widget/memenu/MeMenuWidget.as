package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_128:String = "me_menu_top_view";
      
      public static const const_1681:String = "me_menu_rooms_view";
      
      public static const const_335:String = "me_menu_my_clothes_view";
      
      public static const const_1047:String = "me_menu_dance_moves_view";
      
      public static const const_778:String = "me_menu_effects_view";
      
      public static const const_800:String = "me_menu_settings_view";
      
      public static const const_683:String = "me_menu_sound_settings";
      
      private static const const_1403:int = 5000;
       
      
      private var var_45:IMeMenuView;
      
      private var _mainContainer:IWindowContainer;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1223:Point;
      
      private var var_1514:int = 0;
      
      private var var_2701:int = 0;
      
      private var var_2702:int = 0;
      
      private var var_2703:Boolean = false;
      
      private var var_1920:int = 0;
      
      private var var_1222:Boolean = false;
      
      private var var_2704:Boolean = false;
      
      private var var_451:Boolean = false;
      
      private var var_2448:int = 0;
      
      private var var_2705:Boolean = false;
      
      private var var_1919:int = 0;
      
      private var var_1762:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         this._config = param5;
         this.var_1223 = new Point(0,0);
         this._eventDispatcher = param4;
         if(param5 != null && false)
         {
            this.var_2705 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         this.changeView(const_128);
         this.hide();
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         this.hide();
         this._eventDispatcher = null;
         if(this.var_45 != null)
         {
            this.var_45.dispose();
            this.var_45 = null;
         }
         super.dispose();
      }
      
      override public function get mainWindow() : IWindow
      {
         return this._mainContainer;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_942,this.onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_868,this.onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_792,this.onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_657,this.onToolbarClicked);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_756,this.onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_876,this.onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_109,this.onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_279,this.onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_741,this.onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_132,this.onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_434,this.onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_127,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_475,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_66,this.onCreditBalance);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_95,this.onNormalMode);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_429,this.onGameMode);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_942,this.onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_868,this.onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_792,this.onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_657,this.onToolbarClicked);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_109,this.onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_279,this.onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_741,this.onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_756,this.onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_876,this.onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_132,this.onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_434,this.onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_475,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_127,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_66,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_95,this.onNormalMode);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_95,this.onGameMode);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_921);
         _loc2_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(this.var_45 != null)
         {
            this._mainContainer.removeChild(this.var_45.window);
            this.var_45.dispose();
            this.var_45 = null;
         }
         this.var_451 = false;
         this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function show() : void
      {
         if(!this._mainContainer || !this._mainContainer.parent)
         {
            return;
         }
         this.changeView(const_128);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_941);
         _loc1_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         this.var_451 = true;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(this.var_451 && this.var_45.window.name == const_335))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_871);
            if(messageListener != null)
            {
               if(!this.var_1762)
               {
                  messageListener.processWidgetMessage(_loc2_);
               }
            }
         }
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!this.var_451)
         {
            return;
         }
         if(this.var_45.window.name == const_683)
         {
            (this.var_45 as MeMenuSoundSettingsView).updateSettings(param1);
         }
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_475:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + this.var_451 + " view: " + this.var_45.window.name);
               if(this.var_451 != true || this.var_45.window.name != const_128)
               {
                  return;
               }
               (this.var_45 as MeMenuMainView).setIconAssets("clothes_icon",const_128,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_127:
               this.hide();
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               this.var_451 = !this.var_451;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               this.var_451 = false;
               break;
            default:
               return;
         }
         if(this.var_451)
         {
            this.show();
         }
         else
         {
            this.hide();
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         this.var_1222 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               this.var_1222 = true;
            }
         }
         if(this.var_45 != null && this.var_45.window.name == const_778)
         {
            (this.var_45 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(this.var_45 != null && this.var_45.window.name != const_335)
         {
            this.hide();
         }
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_45 != null && this.var_45.window.name == const_335)
         {
            this.changeView(const_128);
         }
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_45 != null && this.var_45.window.name == const_335)
         {
            this.changeView(const_128);
         }
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != this.var_1514;
         this.var_1514 = param1.daysLeft;
         this.var_2701 = param1.periodsLeft;
         this.var_2702 = param1.pastPeriods;
         this.var_2703 = param1.method_14;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != this.var_1920);
         this.var_1920 = param1.clubLevel;
         if(_loc2_)
         {
            if(this.var_45 != null)
            {
               this.changeView(this.var_45.window.name);
            }
         }
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               this.var_1222 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               this.var_1222 = false;
         }
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_1919 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",this.var_1919.toString());
      }
      
      private function onNormalMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1762 = false;
      }
      
      private function onGameMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1762 = true;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1537,HabboWindowStyle.const_1144,HabboWindowParam.const_44,new Rectangle(0,0,170,260)) as IWindowContainer;
            this._mainContainer.tags.push("room_widget_me_menu");
         }
         return this._mainContainer;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_128:
               _loc2_ = new MeMenuMainView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_778:
               _loc2_ = new MeMenuEffectsView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_1047:
               _loc2_ = new MeMenuDanceView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_335:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1681:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_800:
               _loc2_ = new MeMenuSettingsMenuView();
               break;
            case const_683:
               _loc2_ = new MeMenuSoundSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(this.var_45 != null)
            {
               this._mainContainer.removeChild(this.var_45.window);
               this.var_45.dispose();
               this.var_45 = null;
            }
            this.var_45 = _loc2_;
            this.var_45.init(this,param1);
         }
         this.updateSize();
      }
      
      public function updateSize() : void
      {
         if(this.var_45 != null)
         {
            this.var_1223.x = this.var_45.window.width + 10;
            this.var_1223.y = this.var_45.window.height;
            this.var_45.window.x = 5;
            this.var_45.window.y = 0;
            this._mainContainer.width = this.var_1223.x;
            this._mainContainer.height = this.var_1223.y;
         }
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return this.var_2703;
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return this.var_1514 > 0;
      }
      
      public function get habboClubDays() : int
      {
         return this.var_1514;
      }
      
      public function get habboClubPeriods() : int
      {
         return this.var_2701;
      }
      
      public function get habboClubPastPeriods() : int
      {
         return this.var_2702;
      }
      
      public function get habboClubLevel() : int
      {
         return this.var_1920;
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return this.var_2705;
      }
      
      public function get creditBalance() : int
      {
         return this.var_1919;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         this.var_2448 = getTimer();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = getTimer();
         return _loc1_ - this.var_2448 > const_1403;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return this.var_1222;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2704;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2704 = param1;
      }
   }
}
