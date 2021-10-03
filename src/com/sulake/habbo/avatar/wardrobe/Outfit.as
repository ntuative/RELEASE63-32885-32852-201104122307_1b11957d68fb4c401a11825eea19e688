package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit, IAvatarImageListener
   {
       
      
      private var _controller:HabboAvatarEditor;
      
      private var var_608:String;
      
      private var var_914:String;
      
      private var _view:OutfitView;
      
      private var var_1074:Boolean;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         this._controller = param1;
         this._view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_77:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param3 = "null";
         }
         this.var_608 = param2;
         this.var_914 = param3;
         this.update();
      }
      
      public function dispose() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this.var_608 = null;
         this.var_914 = null;
         this.var_1074 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1074;
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         var _loc1_:IAvatarImage = this._controller.avatarRenderManager.createAvatarImage(this.figure,AvatarScaleType.const_88,this.var_914,this);
         if(_loc1_)
         {
            _loc1_.setDirection(AvatarSetType.const_36,int(FigureData.const_755));
            _loc2_ = _loc1_.getImage(AvatarSetType.const_36,true);
            if(this._view)
            {
               this._view.udpate(_loc2_);
            }
            _loc1_.dispose();
         }
      }
      
      public function get figure() : String
      {
         return this.var_608;
      }
      
      public function get gender() : String
      {
         return this.var_914;
      }
      
      public function get view() : OutfitView
      {
         return this._view;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.update();
      }
   }
}
