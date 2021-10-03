package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import flash.display.BitmapData;
   
   public class FriendEntityTab extends Tab
   {
      
      private static const const_1337:String = "entity_xml";
      
      private static const const_1336:String = "facebook_piece_xml";
      
      private static const const_1335:String = "controls_piece_xml";
      
      private static const const_359:String = "list";
      
      private static const const_769:String = "header";
      
      private static const const_986:String = "facebook";
      
      private static const const_987:String = "controls";
      
      private static const const_630:String = "canvas";
      
      private static const const_438:String = "name";
      
      private static const const_988:String = "btn_message";
      
      private static const const_985:String = "btn_visit";
      
      private static const const_1294:String = "icon";
      
      private static const POOL:Array = [];
      
      private static const const_439:Array = [];
       
      
      private var var_302:IFriendEntity;
      
      public function FriendEntityTab()
      {
         super();
      }
      
      public static function allocate(param1:IFriendEntity) : FriendEntityTab
      {
         var _loc2_:FriendEntityTab = false ? POOL.pop() : new FriendEntityTab();
         _loc2_.var_573 = false;
         _loc2_.friend = param1;
         return _loc2_;
      }
      
      private static function purgeEntityPieces(param1:IWindowContainer) : void
      {
         var _loc3_:* = null;
         var _loc2_:IItemListWindow = IItemListWindow(param1.getChildByName(const_359));
         _loc3_ = _loc2_.getListItemByName(const_986) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         _loc3_ = _loc2_.getListItemByName(const_987) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         param1.height = name_1;
         param1.y = 0;
      }
      
      public function set friend(param1:IFriendEntity) : void
      {
         this.var_302 = param1;
         this.refresh();
      }
      
      public function get friend() : IFriendEntity
      {
         return this.var_302;
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_573)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               this.var_302 = null;
               var_573 = true;
               POOL.push(this);
            }
         }
      }
      
      override public function select() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!selected)
         {
            _loc1_ = IItemListWindow(window.getChildByName(const_359));
            if(this.friend.realName != null && this.friend.realName != "")
            {
               _loc2_ = var_1308.buildFromXML(var_862.getAssetByName(const_1336).content as XML) as IWindowContainer;
               _loc2_.name = const_986;
               _loc2_.getChildByName(const_438).caption = this.friend.realName;
               var_2088.crop(_loc2_.getChildByName(const_438) as ITextWindow);
               _loc3_ = IBitmapWrapperWindow(_loc2_.getChildByName(const_1294));
               _loc3_.bitmap = var_862.getAssetByName(_loc3_.bitmapAssetName).content as BitmapData;
               _loc3_.width = _loc3_.bitmap.width;
               _loc3_.height = _loc3_.bitmap.height;
               _loc1_.addListItem(_loc2_);
            }
            if(this.friend.online)
            {
               _loc2_ = var_1308.buildFromXML(var_862.getAssetByName(const_1335).content as XML) as IWindowContainer;
               _loc2_.name = const_987;
               _loc4_ = _loc2_.getChildByName(const_988);
               if(_loc4_)
               {
                  _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onControlClick);
               }
               _loc4_ = _loc2_.getChildByName(const_985);
               if(_loc4_)
               {
                  if(this.friend.allowFollow)
                  {
                     _loc4_.visible = true;
                     _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onControlClick);
                  }
                  else
                  {
                     _loc4_.visible = false;
                  }
               }
               _loc1_.addListItem(_loc2_);
            }
            window.height = _loc1_.height;
            window.y = name_1 - 0;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            if(_window)
            {
               purgeEntityPieces(_window);
            }
            super.deselect();
         }
      }
      
      protected function refresh() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_window)
         {
            _window = this.allocateEntityWindow();
         }
         if(this.var_302)
         {
            _window.id = this.var_302.id;
            _loc1_ = IItemListWindow(_window.getChildByName(const_359)).getListItemByName(const_769) as IWindowContainer;
            _loc1_.findChildByName(const_438).caption = this.var_302.name;
            var_2088.crop(_loc1_.getChildByName(const_438) as ITextWindow);
            _loc2_ = IBitmapWrapperWindow(_loc1_.findChildByName(const_630));
            _loc2_.bitmap = var_1061.getAvatarFaceBitmap(this.var_302.figure);
            _loc2_.width = _loc2_.bitmap.width;
            _loc2_.height = _loc2_.bitmap.height;
         }
      }
      
      private function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_439.pop() : var_1308.buildFromXML(var_862.getAssetByName(const_1337).content as XML) as IWindowContainer;
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(_loc1_.findChildByName(const_630));
         _loc1_.x = 0;
         _loc1_.y = 0;
         _loc1_.width = name_5;
         _loc1_.height = name_1;
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
         _loc2_.disposesBitmap = true;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            param1.width = name_5;
            param1.height = name_1;
            _loc2_ = IBitmapWrapperWindow(param1.findChildByName(const_630));
            _loc2_.bitmap = null;
            purgeEntityPieces(param1);
            if(const_439.indexOf(param1) == -1)
            {
               const_439.push(param1);
            }
         }
      }
      
      private function onControlClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            switch(param1.window.name)
            {
               case const_988:
                  if(var_1060 && this.var_302)
                  {
                     var_1060.startConversation(this.var_302.id);
                  }
                  break;
               case const_985:
                  if(var_1060 && this.var_302)
                  {
                     var_1060.followToRoom(this.var_302.id);
                  }
            }
         }
      }
      
      private function onMouseClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            if(selected)
            {
               var_1061.deSelect();
            }
            else
            {
               var_1061.selectFriendEntity(this.var_302.id);
            }
         }
      }
   }
}
