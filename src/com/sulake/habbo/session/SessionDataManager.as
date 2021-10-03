package com.sulake.habbo.session
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.availability.AvailabilityStatusMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserObjectEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserRightsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.engine.UserChangeMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.pets.PetRespectFailedEvent;
   import com.sulake.habbo.communication.messages.incoming.users.UserNameChangedMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.room.chat.ChatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.pets.RespectPetMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.RespectUserMessageComposer;
   import com.sulake.habbo.communication.messages.parser.availability.AvailabilityStatusMessageParser;
   import com.sulake.habbo.communication.messages.parser.handshake.UserObjectMessageParser;
   import com.sulake.habbo.communication.messages.parser.users.UserNameChangedMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.events.HabboSessionFigureUpdatedEvent;
   import com.sulake.habbo.session.facebook.FaceBookSession;
   import com.sulake.habbo.session.furniture.FurnitureDataParser;
   import com.sulake.habbo.session.furniture.IFurniDataListener;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.session.product.IProductDataListener;
   import com.sulake.habbo.session.product.ProductDataParser;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IConfirmDialog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class SessionDataManager extends Component implements ISessionDataManager
   {
       
      
      private var _communication:IHabboCommunicationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_15:IRoomSessionManager;
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_608:String;
      
      private var var_914:String;
      
      private var var_1680:String;
      
      private var var_2256:int = 0;
      
      private var _respectLeft:int = 0;
      
      private var var_707:int = 0;
      
      private var var_2897:Array;
      
      private var var_1608:GroupDetailsView;
      
      private var var_2135:Boolean;
      
      private var var_2138:Boolean;
      
      private var var_1200:Dictionary;
      
      private var var_580:ProductDataParser;
      
      private var var_480:Map;
      
      private var _wallItems:Map;
      
      private var var_479:Map;
      
      private var var_292:FurnitureDataParser;
      
      private var var_1607:UserTagManager;
      
      private var var_1343:BadgeImageManager;
      
      private var var_1084:HabboGroupInfoManager;
      
      private var var_884:IgnoredUsersManager;
      
      private var var_178:IHabboConfigurationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var var_1609:Boolean = false;
      
      private var var_1085:Array;
      
      private var var_883:Array;
      
      private var var_2137:int;
      
      private var _securityLevel:int;
      
      private var var_2136:int;
      
      private var var_1086:FaceBookSession;
      
      public function SessionDataManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_2897 = [];
         this.var_1607 = new UserTagManager(events);
         this.var_1084 = new HabboGroupInfoManager(this,events);
         this.var_884 = new IgnoredUsersManager(this);
         this.var_1086 = new FaceBookSession();
         this.var_1200 = new Dictionary();
         this.var_1085 = [];
         this.var_883 = [];
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboCommunicationManager(),this.onHabboCommunicationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      override public function dispose() : void
      {
         if(this.var_480)
         {
            this.var_480.dispose();
            this.var_480 = null;
         }
         if(this.var_479)
         {
            this.var_479.dispose();
            this.var_479 = null;
         }
         if(this._communication)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_15)
         {
            this.var_15.release(new IIDHabboRoomSessionManager());
            this.var_15 = null;
         }
         if(this.var_178)
         {
            this.var_178.release(new IIDHabboConfigurationManager());
            this.var_178 = null;
         }
         if(this._localization)
         {
            this._localization.release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         this.var_883 = null;
         if(this.var_292)
         {
            this.var_292.removeEventListener(FurnitureDataParser.const_126,this.onFurnitureReady);
            this.var_292.dispose();
            this.var_292 = null;
         }
         if(this.var_580)
         {
            this.var_580.removeEventListener(ProductDataParser.const_126,this.onProductsReady);
            this.var_580.dispose();
            this.var_580 = null;
         }
         if(this.var_1086)
         {
            this.var_1086.dispose();
            this.var_1086 = null;
         }
         super.dispose();
      }
      
      private function initBadgeImageManager() : void
      {
         if(this.var_1343 != null)
         {
            return;
         }
         if(this.var_178 == null || this._localization == null)
         {
            return;
         }
         this.var_1343 = new BadgeImageManager(context.root.assets,events,this.var_178,this._localization);
      }
      
      private function onWindowManagerReady(param1:IID, param2:IUnknown) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onHabboCommunicationReady(param1:IID, param2:IUnknown) : void
      {
         this._communication = param2 as IHabboCommunicationManager;
         if(this._communication == null)
         {
            return;
         }
         this._communication.addHabboConnectionMessageEvent(new UserRightsMessageEvent(this.onUserRights));
         this._communication.addHabboConnectionMessageEvent(new UserObjectEvent(this.onUserObject));
         this._communication.addHabboConnectionMessageEvent(new UserChangeMessageEvent(this.onUserChange));
         this._communication.addHabboConnectionMessageEvent(new UserNameChangedMessageEvent(this.onUserNameChange));
         this._communication.addHabboConnectionMessageEvent(new AvailabilityStatusMessageEvent(this.onAvailabilityStatus));
         this._communication.addHabboConnectionMessageEvent(new PetRespectFailedEvent(this.onPetRespectFailed));
         this.var_1607.communication = this._communication;
         this.var_1084.communication = this._communication;
         this.var_1086.communication = this._communication;
         this.var_884.registerMessageEvents();
      }
      
      private function onConfigurationReady(param1:IID, param2:IUnknown) : void
      {
         var _loc3_:* = null;
         if(param2 == null)
         {
            return;
         }
         this.var_178 = param2 as IHabboConfigurationManager;
         this.initBadgeImageManager();
         if(!this.var_292)
         {
            this.var_480 = new Map();
            this._wallItems = new Map();
            this.var_479 = new Map();
            this.var_292 = new FurnitureDataParser(this.var_480,this._wallItems,this.var_479,this._localization);
            this.var_292.addEventListener(FurnitureDataParser.const_126,this.onFurnitureReady);
            if(this.var_178.keyExists("furnidata.load.url"))
            {
               _loc3_ = this.var_178.getKey("furnidata.load.url");
               this.var_292.loadData(_loc3_);
            }
         }
      }
      
      private function onLocalizationReady(param1:IID, param2:IUnknown) : void
      {
         if(param2 == null)
         {
            return;
         }
         this._localization = param2 as IHabboLocalizationManager;
         this.initBadgeImageManager();
         if(this.var_292)
         {
            this.var_292.localization = this._localization;
            this.var_292.registerFurnitureLocalizations();
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_15 = param2 as IRoomSessionManager;
      }
      
      private function onFurnitureReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         this.var_292.removeEventListener(FurnitureDataParser.const_126,this.onFurnitureReady);
         for each(_loc2_ in this.var_883)
         {
            _loc2_.furniDataReady();
         }
         this.var_883 = [];
      }
      
      private function onUserRights(param1:IMessageEvent) : void
      {
         var _loc2_:UserRightsMessageEvent = UserRightsMessageEvent(param1);
         this.var_2137 = _loc2_.clubLevel;
         this._securityLevel = _loc2_.securityLevel;
      }
      
      private function onUserObject(param1:IMessageEvent) : void
      {
         var _loc2_:UserObjectEvent = param1 as UserObjectEvent;
         var _loc3_:UserObjectMessageParser = _loc2_.getParser();
         this._id = _loc3_.id;
         this._name = _loc3_.name;
         this.var_2256 = _loc3_.respectTotal;
         this._respectLeft = _loc3_.respectLeft;
         this.var_707 = _loc3_.petRespectLeft;
         this.var_608 = _loc3_.figure;
         this.var_914 = _loc3_.sex;
         this.var_1680 = _loc3_.realName;
         this.var_2136 = _loc3_.identityId;
         this.var_884.initIgnoreList();
      }
      
      private function onUserChange(param1:IMessageEvent) : void
      {
         var _loc2_:UserChangeMessageEvent = param1 as UserChangeMessageEvent;
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.id == -1)
         {
            this.var_608 = _loc2_.figure;
            this.var_914 = _loc2_.sex;
            events.dispatchEvent(new HabboSessionFigureUpdatedEvent(this._id,this.var_608,this.var_914));
         }
      }
      
      private function onUserNameChange(param1:IMessageEvent) : void
      {
         var _loc2_:UserNameChangedMessageEvent = param1 as UserNameChangedMessageEvent;
         if(_loc2_ == null || _loc2_.getParser() == null)
         {
            return;
         }
         var _loc3_:UserNameChangedMessageParser = _loc2_.getParser();
         if(_loc3_.webId == this._id)
         {
            this._name = _loc3_.newName;
         }
      }
      
      private function onAvailabilityStatus(param1:IMessageEvent) : void
      {
         var _loc2_:AvailabilityStatusMessageParser = (param1 as AvailabilityStatusMessageEvent).getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_2135 = _loc2_.isOpen;
         this.var_2138 = _loc2_.onShutDown;
      }
      
      private function onPetRespectFailed(param1:PetRespectFailedEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         ++this.var_707;
      }
      
      public function get systemOpen() : Boolean
      {
         return this.var_2135;
      }
      
      public function get systemShutDown() : Boolean
      {
         return this.var_2138;
      }
      
      public function hasSecurity(param1:int) : Boolean
      {
         return this._securityLevel >= param1;
      }
      
      public function hasUserRight(param1:String, param2:int) : Boolean
      {
         return this.var_2137 >= param2;
      }
      
      public function get userId() : int
      {
         return this._id;
      }
      
      public function get identityId() : int
      {
         return this.var_2136;
      }
      
      public function get userName() : String
      {
         return this._name;
      }
      
      public function get realName() : String
      {
         return this.var_1680;
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this._securityLevel >= SecurityLevelEnum.const_1062;
      }
      
      public function getUserTags(param1:int) : Array
      {
         return this.var_1607.getTags(param1);
      }
      
      public function getBadgeImage(param1:String) : BitmapData
      {
         return this.var_1343.getBadgeImage(param1);
      }
      
      public function showGroupBadgeInfo(param1:int) : void
      {
         if(this.var_1608 == null)
         {
            this.var_1608 = new GroupDetailsView(this);
         }
         var _loc2_:HabboGroupDetails = this.var_1084.getGroupDetails(param1);
         if(_loc2_ != null)
         {
            this.var_1608.showGroupDetails(param1);
         }
      }
      
      public function getGroupDetails(param1:int) : HabboGroupDetails
      {
         return this.var_1084.getGroupDetails(param1);
      }
      
      public function getGroupBadgeId(param1:int) : String
      {
         return this.var_1084.getBadgeId(param1);
      }
      
      public function getGroupBadgeImage(param1:String) : BitmapData
      {
         return this.var_1343.getBadgeImage(param1,BadgeImageManager.const_1158);
      }
      
      public function get communication() : IHabboCommunicationManager
      {
         return this._communication;
      }
      
      public function isIgnored(param1:String) : Boolean
      {
         return this.var_884.isIgnored(param1);
      }
      
      public function ignoreUser(param1:String) : void
      {
         this.var_884.ignoreUser(param1);
      }
      
      public function unignoreUser(param1:String) : void
      {
         this.var_884.unignoreUser(param1);
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_707;
      }
      
      public function giveRespect(param1:int) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(param1 < 0 || this._respectLeft < 1 || _loc2_ == null)
         {
            throw new Error("Failed to give respect to user: " + param1);
         }
         _loc2_.send(new RespectUserMessageComposer(param1));
         this._respectLeft = this._respectLeft - 1;
      }
      
      public function givePetRespect(param1:int) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(param1 < 0 || this.var_707 < 1 || _loc2_ == null)
         {
            throw new Error("Failed to give respect to pet: " + param1);
         }
         _loc2_.send(new RespectPetMessageComposer(param1));
         this.var_707 = this.var_707 - 1;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return this.var_178;
      }
      
      public function getProductData(param1:String) : IProductData
      {
         if(!this.var_1609)
         {
            this.loadProductData();
         }
         return this.var_1200[param1];
      }
      
      public function getFloorItemData(param1:int) : IFurnitureData
      {
         if(this.var_480 == null)
         {
            return null;
         }
         return this.var_480.getValue(param1.toString());
      }
      
      public function getWallItemData(param1:int) : IFurnitureData
      {
         if(this._wallItems == null)
         {
            return null;
         }
         return this._wallItems.getValue(param1.toString());
      }
      
      public function getFloorItemDataByName(param1:String, param2:int = 0) : IFurnitureData
      {
         var _loc4_:int = 0;
         if(this.var_479 == null)
         {
            return null;
         }
         var _loc3_:Array = this.var_479.getValue(param1);
         if(_loc3_ != null && param2 <= _loc3_.length - 1)
         {
            _loc4_ = _loc3_[param2];
            return this.getFloorItemData(_loc4_);
         }
         return null;
      }
      
      public function getWallItemDataByName(param1:String, param2:int = 0) : IFurnitureData
      {
         var _loc4_:int = 0;
         if(this.var_479 == null)
         {
            return null;
         }
         var _loc3_:Array = this.var_479.getValue(param1);
         if(_loc3_ != null && param2 <= _loc3_.length - 1)
         {
            _loc4_ = _loc3_[param2];
            return this.getWallItemData(_loc4_);
         }
         return null;
      }
      
      public function openHabboHomePage(param1:int) : void
      {
         var urlString:String = null;
         var userId:int = param1;
         if(this.var_178 != null)
         {
            urlString = this.var_178.getKey("link.format.userpage");
            urlString = urlString.replace("%ID%",String(userId));
            try
            {
               HabboWebTools.navigateToURL(urlString,"habboMain");
            }
            catch(e:Error)
            {
               Logger.log("Error occurred!");
            }
         }
      }
      
      public function pickAllFurniture(param1:int, param2:int) : void
      {
         var roomId:int = param1;
         var roomCategory:int = param2;
         if(this.var_15 == null || this._windowManager == null)
         {
            return;
         }
         var session:IRoomSession = this.var_15.getSession(roomId,roomCategory);
         if(session == null)
         {
            return;
         }
         if(session.isRoomOwner || this.isAnyRoomController)
         {
            this._windowManager.confirm("${generic.alert.title}","${room.confirm.pick_all}",0,function(param1:IConfirmDialog, param2:WindowEvent):void
            {
               param1.dispose();
               if(param2.type == WindowEvent.const_164)
               {
                  sendPickAllFurnitureMessage();
               }
            });
         }
      }
      
      public function loadProductData(param1:IProductDataListener = null) : Boolean
      {
         var _loc2_:* = null;
         if(this.var_1609)
         {
            return true;
         }
         if(this.var_1085.indexOf(param1) == -1)
         {
            this.var_1085.push(param1);
         }
         if(this.var_580 == null)
         {
            _loc2_ = this.var_178.getKey("productdata.load.url");
            this.var_580 = new ProductDataParser(_loc2_,this.var_1200);
            this.var_580.addEventListener(ProductDataParser.const_126,this.onProductsReady);
         }
         return false;
      }
      
      private function onProductsReady(param1:Event) : void
      {
         var _loc2_:* = null;
         this.var_580.removeEventListener(ProductDataParser.const_126,this.onProductsReady);
         this.var_1609 = true;
         for each(_loc2_ in this.var_1085)
         {
            if(_loc2_ != null && !_loc2_.disposed)
            {
               _loc2_.productDataReady();
            }
         }
         this.var_1085 = [];
      }
      
      private function sendPickAllFurnitureMessage() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new ChatMessageComposer(":pickall"));
      }
      
      public function get roomSessionManager() : IRoomSessionManager
      {
         return this.var_15;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get gender() : String
      {
         return this.var_914;
      }
      
      public function getFurniData(param1:IFurniDataListener) : Array
      {
         if(this.var_480.length == 0)
         {
            if(this.var_883.indexOf(param1) == -1)
            {
               this.var_883.push(param1);
            }
            return null;
         }
         var _loc2_:Array = this.var_480.getValues();
         return _loc2_.concat(this._wallItems.getValues());
      }
   }
}
