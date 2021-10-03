package com.sulake.habbo.ui
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.advertisement.IAdManager;
   import com.sulake.habbo.advertisement.events.AdEvent;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.IHabboAvatarEditor;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.help.IHabboHelp;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.moderation.IHabboModeration;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.events.RoomEngineDimmerStateEvent;
   import com.sulake.habbo.room.events.RoomEngineEvent;
   import com.sulake.habbo.room.events.RoomEngineObjectEvent;
   import com.sulake.habbo.room.events.RoomEngineRoomColorEvent;
   import com.sulake.habbo.room.events.RoomEngineSoundMachineEvent;
   import com.sulake.habbo.roomevents.IHabboUserDefinedRoomEvents;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionChatEvent;
   import com.sulake.habbo.session.events.RoomSessionDimmerPresetsEvent;
   import com.sulake.habbo.session.events.RoomSessionDoorbellEvent;
   import com.sulake.habbo.session.events.RoomSessionErrorMessageEvent;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.session.events.RoomSessionFriendRequestEvent;
   import com.sulake.habbo.session.events.RoomSessionPetPackageEvent;
   import com.sulake.habbo.session.events.RoomSessionPollEvent;
   import com.sulake.habbo.session.events.RoomSessionPresentEvent;
   import com.sulake.habbo.session.events.RoomSessionQueueEvent;
   import com.sulake.habbo.session.events.RoomSessionUserBadgesEvent;
   import com.sulake.habbo.session.events.RoomSessionUserDataUpdateEvent;
   import com.sulake.habbo.session.events.RoomSessionUserNotificationEvent;
   import com.sulake.habbo.session.events.RoomSessionViralFurniStatusEvent;
   import com.sulake.habbo.session.events.RoomSessionVoteEvent;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.tracking.IHabboTracking;
   import com.sulake.habbo.widget.IRoomWidgetFactory;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboAdManager;
   import com.sulake.iid.IIDHabboAvatarEditor;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboHelp;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboModeration;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboRoomWidget;
   import com.sulake.iid.IIDHabboSoundManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDHabboTracking;
   import com.sulake.iid.IIDHabboUserDefinedRoomEvents;
   import com.sulake.iid.IIDRoomEngine;
   import com.sulake.iid.IIDSessionDataManager;
   import iid.IIDHabboWindowManager;
   
   public class RoomUI extends Component implements IRoomUI, IUpdateReceiver
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_15:IRoomSessionManager;
      
      private var var_1114:IRoomWidgetFactory;
      
      private var var_424:ISessionDataManager;
      
      private var _friendList:IHabboFriendList;
      
      private var var_495:IAvatarRenderManager;
      
      private var _inventory:IHabboInventory;
      
      private var var_157:IHabboToolbar;
      
      private var _navigator:IHabboNavigator;
      
      private var var_2007:IHabboAvatarEditor = null;
      
      private var _catalog:IHabboCatalog;
      
      private var var_330:IAdManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var var_1251:IHabboHelp;
      
      private var var_1039:IHabboModeration;
      
      private var _config:IHabboConfigurationManager;
      
      private var _soundManager:IHabboSoundManager;
      
      private var var_329:Map;
      
      private var var_1566:int;
      
      private var _connection:IConnection;
      
      private var _habboTracking:IHabboTracking;
      
      private var var_1275:IHabboUserDefinedRoomEvents;
      
      public function RoomUI(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1566 = RoomDesktop.const_608;
         super(param1,param2,param3);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
         queueInterface(new IIDHabboRoomWidget(),this.onRoomWidgetFactoryReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
         queueInterface(new IIDHabboFriendList(),this.onFriendListReady);
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRenderManagerReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
         queueInterface(new IIDHabboNavigator(),this.onNavigatorReady);
         queueInterface(new IIDHabboAvatarEditor(),this.onAvatarEditorReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDHabboAdManager(),this.onAdManagerReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
         queueInterface(new IIDHabboHelp(),this.onHabboHelpReady);
         queueInterface(new IIDHabboModeration(),this.onHabboModerationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
         queueInterface(new IIDHabboSoundManager(),this.onSoundManagerReady);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationReady);
         queueInterface(new IIDHabboUserDefinedRoomEvents(),this.onUserDefinedRoomEventsReady);
         this._habboTracking = IHabboTracking(queueInterface(new IIDHabboTracking()));
         this.var_329 = new Map();
         registerUpdateReceiver(this,0);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._windowManager != null)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._roomEngine != null)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         if(this.var_15 != null)
         {
            this.var_15.release(new IIDHabboRoomSessionManager());
            this.var_15 = null;
         }
         if(this.var_1114 != null)
         {
            this.var_1114.release(new IIDHabboRoomWidget());
            this.var_1114 = null;
         }
         if(this._inventory != null)
         {
            this._inventory.release(new IIDHabboInventory());
            this._inventory = null;
         }
         if(this.var_157 != null)
         {
            this.var_157.release(new IIDHabboToolbar());
            this.var_157 = null;
         }
         if(this._config != null)
         {
            this._config.release(new IIDHabboConfigurationManager());
            this._config = null;
         }
         if(this._soundManager != null)
         {
            this._soundManager.release(new IIDHabboSoundManager());
            this._soundManager = null;
         }
         if(this.var_330 != null)
         {
            this.var_330.release(new IIDHabboAdManager());
            this.var_330 = null;
         }
         if(this.var_495 != null)
         {
            this.var_495.release(new IIDAvatarRenderManager());
            this.var_495 = null;
         }
         if(this._catalog != null)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         if(this._friendList != null)
         {
            this._friendList.release(new IIDHabboFriendList());
            this._friendList = null;
         }
         if(this.var_1251 != null)
         {
            this.var_1251.release(new IIDHabboHelp());
            this.var_1251 = null;
         }
         if(this._localization != null)
         {
            this._localization.release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         if(this.var_1039 != null)
         {
            this.var_1039.release(new IIDHabboModeration());
            this.var_1039 = null;
         }
         if(this._navigator != null)
         {
            this._navigator.release(new IIDHabboNavigator());
            this._navigator = null;
         }
         if(this.var_424 != null)
         {
            this.var_424.release(new IIDSessionDataManager());
            this.var_424 = null;
         }
         if(this._habboTracking)
         {
            this._habboTracking.release(new IIDHabboTracking());
            this._habboTracking = null;
         }
         if(this.var_1275)
         {
            this.var_1275.release(new IIDHabboUserDefinedRoomEvents());
            this.var_1275 = null;
         }
         this.var_2007 = null;
         this._connection = null;
         if(this.var_329)
         {
            while(this.var_329.length > 0)
            {
               _loc1_ = this.var_329.getKey(0) as String;
               _loc2_ = this.var_329.remove(_loc1_) as RoomDesktop;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
            }
            this.var_329.dispose();
            this.var_329 = null;
         }
         removeUpdateReceiver(this);
         super.dispose();
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onRoomWidgetFactoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_1114 = param2 as IRoomWidgetFactory;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_15 = param2 as IRoomSessionManager;
         this.registerSessionEvents();
         if(this.var_15 != null && this._roomEngine != null && this._roomEngine.isInitialized)
         {
            this.var_15.roomEngineReady = true;
         }
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_424 = param2 as ISessionDataManager;
      }
      
      private function onFriendListReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._friendList = param2 as IHabboFriendList;
      }
      
      private function onAvatarRenderManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_495 = param2 as IAvatarRenderManager;
      }
      
      private function onInventoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._inventory = param2 as IHabboInventory;
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_157 = param2 as IHabboToolbar;
      }
      
      private function onNavigatorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._navigator = param2 as IHabboNavigator;
      }
      
      private function onAvatarEditorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_2007 = param2 as IHabboAvatarEditor;
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._catalog = param2 as IHabboCatalog;
      }
      
      private function onAdManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_330 = param2 as IAdManager;
         if(this.var_330 != null && this.var_330.events != null)
         {
            this.var_330.events.addEventListener(AdEvent.const_534,this.adEventHandler);
            this.var_330.events.addEventListener(AdEvent.const_588,this.adEventHandler);
            this.var_330.events.addEventListener(AdEvent.const_450,this.adEventHandler);
         }
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._localization = param2 as IHabboLocalizationManager;
      }
      
      private function onHabboHelpReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_1251 = param2 as IHabboHelp;
      }
      
      private function onHabboModerationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_1039 = param2 as IHabboModeration;
         Logger.log("XXXX GOT HABBO MODERATION: " + this.var_1039);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._config = param2 as IHabboConfigurationManager;
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._soundManager = param2 as IHabboSoundManager;
      }
      
      private function registerSessionEvents() : void
      {
         if(this.var_15)
         {
            this.var_15.events.addEventListener(RoomSessionEvent.const_269,this.roomSessionStateEventHandler);
            this.var_15.events.addEventListener(RoomSessionEvent.const_85,this.roomSessionStateEventHandler);
            this.var_15.events.addEventListener(RoomSessionEvent.const_93,this.roomSessionStateEventHandler);
            this.var_15.events.addEventListener(RoomSessionChatEvent.const_214,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionChatEvent.const_554,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionUserBadgesEvent.const_141,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionDoorbellEvent.const_116,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionDoorbellEvent.const_158,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionDoorbellEvent.const_62,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionPresentEvent.const_331,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionPetPackageEvent.const_461,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionPetPackageEvent.const_452,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionViralFurniStatusEvent.const_449,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionViralFurniStatusEvent.const_600,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_248,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_236,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_856,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_1164,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_1119,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_233,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_229,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_244,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_277,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_241,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_231,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_253,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_718,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_768,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_201,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_818,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionErrorMessageEvent.const_798,this.roomSessionDialogEventHandler);
            this.var_15.events.addEventListener(RoomSessionQueueEvent.const_505,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionVoteEvent.const_157,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionVoteEvent.const_151,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionPollEvent.const_159,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionPollEvent.const_70,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionPollEvent.const_154,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionDimmerPresetsEvent.const_576,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionFriendRequestEvent.const_140,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionUserNotificationEvent.const_124,this.roomSessionEventHandler);
            this.var_15.events.addEventListener(RoomSessionUserDataUpdateEvent.const_117,this.roomSessionEventHandler);
         }
      }
      
      private function roomSessionStateEventHandler(param1:RoomSessionEvent) : void
      {
         var _loc2_:* = null;
         if(this._roomEngine == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomSessionEvent.const_269:
               _loc2_ = this.createDesktop(param1.session);
               break;
            case RoomSessionEvent.const_85:
               break;
            case RoomSessionEvent.const_93:
               if(param1.session != null)
               {
                  this.disposeDesktop(this.getRoomIdentifier(param1.session.roomId,param1.session.roomCategory));
                  this.var_157.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_169,HabboToolbarIconEnum.ZOOM));
                  this.var_157.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_169,HabboToolbarIconEnum.MEMENU));
                  this.var_157.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_169,HabboToolbarIconEnum.INVENTORY));
               }
         }
      }
      
      private function roomSessionEventHandler(param1:RoomSessionEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._roomEngine == null)
         {
            return;
         }
         if(param1.session != null)
         {
            _loc2_ = this.getRoomIdentifier(param1.session.roomId,param1.session.roomCategory);
            _loc3_ = this.getDesktop(_loc2_);
            if(_loc3_ != null)
            {
               _loc3_.processEvent(param1);
            }
         }
      }
      
      private function roomSessionDialogEventHandler(param1:RoomSessionEvent) : void
      {
         var errorMessage:String = null;
         var event:RoomSessionEvent = param1;
         var errorTitle:String = "${error.title}";
         switch(event.type)
         {
            case RoomSessionErrorMessageEvent.const_248:
               errorMessage = "${room.error.cant_trade_stuff}";
               break;
            case RoomSessionErrorMessageEvent.const_236:
               errorMessage = "${room.error.cant_set_item}";
               break;
            case RoomSessionErrorMessageEvent.const_856:
               errorMessage = "${room.error.cant_set_not_owner}";
               break;
            case RoomSessionErrorMessageEvent.const_233:
               errorMessage = "${room.error.max_furniture}";
               break;
            case RoomSessionErrorMessageEvent.const_201:
               errorMessage = "${room.error.max_pets}";
               break;
            case RoomSessionErrorMessageEvent.const_229:
               errorMessage = "${room.error.max_queuetiles}";
               break;
            case RoomSessionErrorMessageEvent.const_244:
               errorMessage = "${room.error.max_soundfurni}";
               break;
            case RoomSessionErrorMessageEvent.const_277:
               errorMessage = "${room.error.max_stickies}";
               break;
            case RoomSessionErrorMessageEvent.const_241:
               errorMessage = "${room.error.kicked}";
               errorTitle = "${generic.alert.title}";
               break;
            case RoomSessionErrorMessageEvent.const_253:
               errorMessage = "${room.error.guide.not.available}";
               break;
            case RoomSessionErrorMessageEvent.const_231:
               errorMessage = "${room.error.guide.already.exists}";
               break;
            case RoomSessionErrorMessageEvent.const_718:
               errorMessage = "${room.error.pets.forbidden_in_hotel}";
               break;
            case RoomSessionErrorMessageEvent.const_768:
               errorMessage = "${room.error.pets.forbidden_in_flat}";
               break;
            case RoomSessionErrorMessageEvent.const_818:
               errorMessage = "${room.error.pets.no_free_tiles}";
               break;
            case RoomSessionErrorMessageEvent.const_798:
               errorMessage = "${room.error.pets.selected_tile_not_free}";
               break;
            default:
               return;
         }
         this._windowManager.alert(errorTitle,errorMessage,0,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         });
      }
      
      private function adEventHandler(param1:AdEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.processEvent(param1);
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._roomEngine = param2 as IRoomEngine;
         this.initializeRoomEngineEvents();
         if(this.var_15 != null && this._roomEngine != null && this._roomEngine.isInitialized)
         {
            this.var_15.roomEngineReady = true;
         }
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var _loc3_:IHabboCommunicationManager = param2 as IHabboCommunicationManager;
         if(_loc3_ != null)
         {
            this._connection = _loc3_.getHabboMainConnection(this.onConnectionReady);
            if(this._connection != null)
            {
               this.onConnectionReady(this._connection);
            }
         }
      }
      
      private function onUserDefinedRoomEventsReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_1275 = param2 as IHabboUserDefinedRoomEvents;
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
            this._connection = param1;
         }
      }
      
      private function initializeRoomEngineEvents() : void
      {
         if(this._roomEngine != null && this._roomEngine.events != null)
         {
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_851,this.roomEngineEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_324,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_310,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_563,this.roomEngineEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_460,this.roomEngineEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineDimmerStateEvent.const_64,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineRoomColorEvent.const_895,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_723,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_463,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_409,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_661,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_176,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_859,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.ROOM_OBJECT_WIDGET_REQUEST_CREDITFURNI,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_144,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_142,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.ROOM_OBJECT_WIDGET_REQUEST_TROPHY,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_143,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_134,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_146,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_147,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_487,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_549,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_564,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_490,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_108,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_161,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_148,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineSoundMachineEvent.const_245,this.roomObjectEventHandler);
         }
      }
      
      private function roomEngineEventHandler(param1:RoomEngineEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(param1.type == RoomEngineEvent.const_851)
         {
            if(this.var_15 != null)
            {
               this.var_15.roomEngineReady = true;
            }
         }
         else if(param1.type == RoomEngineEvent.const_460 || param1.type == RoomEngineEvent.const_563)
         {
            _loc2_ = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
            _loc3_ = this.getDesktop(_loc2_) as RoomDesktop;
            if(_loc3_ == null)
            {
               return;
            }
            _loc3_.roomEngineEventHandler(param1);
         }
      }
      
      private function roomEventHandler(param1:RoomEngineEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:Boolean = false;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(this._roomEngine == null)
         {
            return;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ == null)
         {
            if(this.var_15 == null)
            {
               return;
            }
            _loc4_ = this.var_15.getSession(param1.roomId,param1.roomCategory);
            if(_loc4_ != null)
            {
               _loc3_ = this.createDesktop(_loc4_) as RoomDesktop;
            }
         }
         if(_loc3_ == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomEngineEvent.const_324:
               _loc5_ = false;
               _loc3_.createRoomView(this.getActiveCanvasId(param1.roomId,param1.roomCategory));
               if(this._roomEngine != null)
               {
                  this._roomEngine.setActiveRoom(param1.roomId,param1.roomCategory);
                  if(!this._roomEngine.isPublicRoomWorldType(this._roomEngine.getWorldType(param1.roomId,param1.roomCategory)))
                  {
                     _loc7_ = new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_98,HabboToolbarIconEnum.ZOOM);
                     _loc7_.iconState = "2";
                     this.var_157.events.dispatchEvent(_loc7_);
                  }
                  else
                  {
                     _loc5_ = true;
                  }
               }
               _loc3_.createWidget(RoomWidgetEnum.const_430);
               _loc3_.createWidget(RoomWidgetEnum.const_481);
               if(!_loc3_.session.isSpectatorMode)
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_484);
                  _loc3_.createWidget(RoomWidgetEnum.CHAT_INPUT_WIDGET);
                  _loc3_.createWidget(RoomWidgetEnum.const_140);
               }
               _loc3_.createWidget(RoomWidgetEnum.const_940);
               _loc3_.createWidget(RoomWidgetEnum.const_488);
               _loc3_.createWidget(RoomWidgetEnum.const_536);
               _loc3_.createWidget(RoomWidgetEnum.const_500);
               _loc3_.createWidget(RoomWidgetEnum.const_538);
               _loc3_.createWidget(RoomWidgetEnum.const_607);
               _loc3_.createWidget(RoomWidgetEnum.const_575);
               _loc3_.createWidget(RoomWidgetEnum.const_464);
               _loc3_.createWidget(RoomWidgetEnum.const_116);
               _loc3_.createWidget(RoomWidgetEnum.const_378);
               _loc3_.createWidget(RoomWidgetEnum.const_131);
               _loc3_.createWidget(RoomWidgetEnum.const_597);
               _loc3_.createWidget(RoomWidgetEnum.const_493);
               _loc3_.createWidget(RoomWidgetEnum.const_858);
               _loc3_.createWidget(RoomWidgetEnum.const_124);
               _loc3_.createWidget(RoomWidgetEnum.const_454);
               if(this._config.getKey("avatar.widget.enabled","0") == "1")
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_120);
               }
               if(this._config.getKey("purse.widget.enabled","0") == "1")
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_373);
                  _loc3_.initializeWidget(RoomWidgetEnum.const_373);
               }
               if(!_loc5_)
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_560);
               }
               _loc3_.createWidget(RoomWidgetEnum.const_348);
               if(this.var_1566 != RoomDesktop.const_608)
               {
                  _loc3_.initializeWidget(RoomWidgetEnum.const_348,this.var_1566);
               }
               if(this.var_330 != null)
               {
                  this.var_330.showRoomAd();
               }
               _loc3_.createWidget(RoomWidgetEnum.const_455);
               if(this._config.getKey("roominfo.widget.enabled") == "1")
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_474);
               }
               break;
            case RoomEngineEvent.const_310:
               this.disposeDesktop(_loc2_);
               break;
            case RoomEngineRoomColorEvent.const_895:
               _loc6_ = param1 as RoomEngineRoomColorEvent;
               if(_loc6_ == null)
               {
                  break;
               }
               if(_loc6_.bgOnly)
               {
                  _loc3_.setRoomViewColor(16777215,255);
               }
               else
               {
                  _loc3_.setRoomViewColor(_loc6_.color,_loc6_.brightness);
               }
               break;
            case RoomEngineDimmerStateEvent.const_64:
               _loc3_.processEvent(param1);
         }
      }
      
      private function roomObjectEventHandler(param1:RoomEngineObjectEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this._roomEngine == null)
         {
            return;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.roomObjectEventHandler(param1);
      }
      
      public function processWidgetMessage(param1:int, param2:int, param3:RoomWidgetMessage) : void
      {
         if(param3 == null)
         {
            return;
         }
         if(this._roomEngine == null)
         {
            return;
         }
         var _loc4_:String = this.getRoomIdentifier(param1,param2);
         var _loc5_:RoomDesktop = this.getDesktop(_loc4_) as RoomDesktop;
         if(_loc5_ == null)
         {
            return;
         }
         _loc5_.processWidgetMessage(param3);
      }
      
      public function createDesktop(param1:IRoomSession) : IRoomDesktop
      {
         if(param1 == null)
         {
            return null;
         }
         if(this._roomEngine == null)
         {
            return null;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ != null)
         {
            return _loc3_;
         }
         _loc3_ = new RoomDesktop(param1,assets,this._connection);
         _loc3_.roomEngine = this._roomEngine;
         _loc3_.windowManager = this._windowManager;
         _loc3_.roomWidgetFactory = this.var_1114;
         _loc3_.sessionDataManager = this.var_424;
         _loc3_.roomSessionManager = this.var_15;
         _loc3_.friendList = this._friendList;
         _loc3_.avatarRenderManager = this.var_495;
         _loc3_.inventory = this._inventory;
         _loc3_.toolbar = this.var_157;
         _loc3_.navigator = this._navigator;
         _loc3_.avatarEditor = this.var_2007;
         _loc3_.catalog = this._catalog;
         _loc3_.adManager = this.var_330;
         _loc3_.localization = this._localization;
         _loc3_.habboHelp = this.var_1251;
         _loc3_.moderation = this.var_1039;
         _loc3_.config = this._config;
         _loc3_.soundManager = this._soundManager;
         _loc3_.habboTracking = this._habboTracking;
         _loc3_.userDefinedRoomEvents = this.var_1275;
         var _loc4_:XmlAsset = assets.getAssetByName("room_desktop_layout_xml") as XmlAsset;
         if(_loc4_ != null)
         {
            _loc3_.layout = _loc4_.content as XML;
         }
         _loc3_.createWidget(RoomWidgetEnum.const_585);
         _loc3_.createWidget(RoomWidgetEnum.const_867);
         _loc3_.init();
         this.var_329.add(_loc2_,_loc3_);
         return _loc3_;
      }
      
      public function disposeDesktop(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:RoomDesktop = this.var_329.remove(param1) as RoomDesktop;
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.getWidgetState(RoomWidgetEnum.const_348);
            if(_loc3_ != RoomDesktop.const_608)
            {
               this.var_1566 = _loc3_;
            }
            _loc2_.dispose();
         }
      }
      
      public function getDesktop(param1:String) : IRoomDesktop
      {
         return this.var_329.getValue(param1) as RoomDesktop;
      }
      
      public function getActiveCanvasId(param1:int, param2:int) : int
      {
         return 1;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_329.length)
         {
            _loc3_ = this.var_329.getWithIndex(_loc2_) as RoomDesktop;
            if(_loc3_ != null)
            {
               _loc3_.update();
            }
            _loc2_++;
         }
      }
      
      private function getRoomIdentifier(param1:int, param2:int) : String
      {
         return "hard_coded_room_id";
      }
   }
}
