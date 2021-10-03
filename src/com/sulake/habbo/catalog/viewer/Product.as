package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import flash.display.BitmapData;
   
   public class Product extends ProductGridItem implements IProduct, IGetImageListener
   {
       
      
      private var var_1389:String;
      
      private var var_1700:int;
      
      private var var_1388:String;
      
      private var var_1390:int;
      
      private var var_1714:int;
      
      private var var_1713:IProductData;
      
      private var _furnitureData:IFurnitureData;
      
      public function Product(param1:String, param2:int, param3:String, param4:int, param5:int, param6:IProductData, param7:IFurnitureData)
      {
         super();
         this.var_1389 = param1;
         this.var_1700 = param2;
         this.var_1388 = param3;
         this.var_1390 = param4;
         this.var_1714 = param5;
         this.var_1713 = param6;
         this._furnitureData = param7;
      }
      
      public function get productType() : String
      {
         return this.var_1389;
      }
      
      public function get productClassId() : int
      {
         return this.var_1700;
      }
      
      public function get extraParam() : String
      {
         return this.var_1388;
      }
      
      public function get productCount() : int
      {
         return this.var_1390;
      }
      
      public function get expiration() : int
      {
         return this.var_1714;
      }
      
      public function get productData() : IProductData
      {
         return this.var_1713;
      }
      
      public function get furnitureData() : IFurnitureData
      {
         return this._furnitureData;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_1389 = "";
         this.var_1700 = 0;
         this.var_1388 = "";
         this.var_1390 = 0;
         this.var_1714 = 0;
         this.var_1713 = null;
      }
      
      public function initIcon(param1:IProductContainer, param2:IGetImageListener = null) : BitmapData
      {
         var _loc6_:* = null;
         var _loc3_:* = null;
         if(param2 == null)
         {
            param2 = {};
         }
         var _loc4_:IRoomEngine = (param1 as ProductContainer).offer.page.viewer.roomEngine;
         var _loc5_:IHabboCatalog = (param1 as ProductContainer).offer.page.viewer.catalog;
         switch(this.var_1389)
         {
            case ProductTypeEnum.const_79:
               _loc6_ = _loc4_.getFurnitureIcon(this.productClassId,param2);
               break;
            case ProductTypeEnum.const_71:
               _loc6_ = _loc4_.getWallItemIcon(this.productClassId,param2,this.var_1388);
               break;
            case ProductTypeEnum.const_203:
               _loc3_ = _loc5_.getPixelEffectIcon(this.productClassId);
               break;
            case ProductTypeEnum.const_296:
               _loc3_ = _loc5_.getSubscriptionProductIcon(this.productClassId);
               break;
            default:
               Logger.log("[Product] Can not yet handle this type of product: " + this.productType);
         }
         if(_loc6_ != null)
         {
            _loc3_ = _loc6_.data;
            if(param2 == this)
            {
               this.setIconImage(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         Logger.log("[Product] Bundle Icon Image Ready!" + param1);
         setIconImage(param2);
      }
      
      override public function set view(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!param1)
         {
            return;
         }
         super.view = param1;
         if(this.var_1390 > 1)
         {
            _loc2_ = _view.findChildByName("multiContainer");
            if(_loc2_)
            {
               _loc2_.visible = true;
            }
            _loc3_ = _view.findChildByName("multiCounter") as ITextWindow;
            if(_loc3_)
            {
               _loc3_.text = "x" + this.productCount;
            }
         }
      }
   }
}
