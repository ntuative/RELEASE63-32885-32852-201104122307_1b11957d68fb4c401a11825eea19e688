package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_844:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1074)
         {
            _structure = null;
            _assets = null;
            var_249 = null;
            var_289 = null;
            var_608 = null;
            var_575 = null;
            var_333 = null;
            if(!var_1329 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_838 = null;
            var_1074 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_844[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_844[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_375:
               switch(_loc3_)
               {
                  case AvatarAction.const_782:
                  case AvatarAction.const_605:
                  case AvatarAction.const_367:
                  case AvatarAction.const_916:
                  case AvatarAction.const_412:
                  case AvatarAction.const_806:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_301:
            case AvatarAction.DANCE:
            case AvatarAction.WAVE:
            case AvatarAction.const_727:
            case AvatarAction.const_836:
            case AvatarAction.const_840:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
