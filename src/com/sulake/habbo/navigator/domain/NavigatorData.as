package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1787:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_201:MsgWithRequestId;
      
      private var var_618:RoomEventData;
      
      private var var_2365:Boolean;
      
      private var var_2360:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2200:int;
      
      private var var_259:GuestRoomData;
      
      private var var_934:PublicRoomShortData;
      
      private var var_2361:int;
      
      private var var_2355:Boolean;
      
      private var var_2364:int;
      
      private var var_2357:Boolean;
      
      private var var_1728:int;
      
      private var var_2356:Boolean;
      
      private var var_1403:Array;
      
      private var var_1402:Array;
      
      private var var_2362:int;
      
      private var var_1404:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1144:Boolean;
      
      private var var_2358:int;
      
      private var var_2359:Boolean;
      
      private var var_2363:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1403 = new Array();
         this.var_1402 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_259 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_259 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_934 = null;
         this.var_259 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_934 = param1.publicSpace;
            this.var_618 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_618 != null)
         {
            this.var_618.dispose();
            this.var_618 = null;
         }
         if(this.var_934 != null)
         {
            this.var_934.dispose();
            this.var_934 = null;
         }
         if(this.var_259 != null)
         {
            this.var_259.dispose();
            this.var_259 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_259 != null)
         {
            this.var_259.dispose();
         }
         this.var_259 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_618 != null)
         {
            this.var_618.dispose();
         }
         this.var_618 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1144 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1144 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1144 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_201 == null)
         {
            return;
         }
         this.var_201.dispose();
         this.var_201 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_201 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_201 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_201 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_618;
      }
      
      public function get avatarId() : int
      {
         return this.var_2200;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2365;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2360;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_259;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_934;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2355;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2364;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1728;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2357;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2358;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2361;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2356;
      }
      
      public function get adIndex() : int
      {
         return this.var_2363;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2359;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2200 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2364 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2355 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2360 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2357 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1728 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2361 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2356 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2363 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2359 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1403 = param1;
         this.var_1402 = new Array();
         for each(_loc2_ in this.var_1403)
         {
            if(_loc2_.visible)
            {
               this.var_1402.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1403;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1402;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2362 = param1.limit;
         this.var_1404 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1404 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_259.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_259 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_259.flatId;
         return this.var_1728 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1404 >= this.var_2362;
      }
      
      public function startLoading() : void
      {
         this.var_1144 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1144;
      }
   }
}
