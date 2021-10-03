package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetPurchaseOverrideEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2742:XML;
      
      private var var_2741:XML;
      
      private var var_2743:XML;
      
      private var var_1023:IWindowContainer;
      
      private var var_675:IButtonWindow;
      
      private var var_2953:IButtonWindow;
      
      private var var_1951:ITextWindow;
      
      private var var_1950:ITextWindow;
      
      private var var_1952:ITextWindow;
      
      private var var_2926:ITextWindow;
      
      private var var_92:Offer;
      
      private var var_1949:String = "";
      
      private var var_1543:Function;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function dispose() : void
      {
         events.removeEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.removeEventListener(WidgetEvent.const_694,this.onSetParameter);
         events.removeEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_2742 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            this.var_2741 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            this.var_2743 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.addEventListener(WidgetEvent.const_694,this.onSetParameter);
         events.addEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         events.addEventListener(WidgetEvent.CWE_INIT_PURCHASE,this.initPurchase);
         return true;
      }
      
      private function onPurchaseOverride(param1:CatalogWidgetPurchaseOverrideEvent) : void
      {
         this.var_1543 = param1.callback;
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_950:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2742) as IWindowContainer;
               break;
            case Offer.const_1266:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2741) as IWindowContainer;
               break;
            case Offer.const_1192:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2743) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach..." + this.var_92.priceType);
         }
         if(_loc2_ != null)
         {
            if(this.var_1023 != null)
            {
               _window.removeChild(this.var_1023);
               this.var_1023.dispose();
            }
            this.var_1023 = _loc2_;
            _window.addChild(_loc2_);
            this.var_1023.x = 0;
            this.var_1023.y = 0;
         }
         this.var_1951 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         this.var_1950 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         this.var_1952 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         this.var_2926 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         this.var_675 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(this.var_675 != null)
         {
            if(this.var_1543 != null)
            {
               this.var_675.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1543);
            }
            else
            {
               this.var_675.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1543);
               this.var_675.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPurchase);
            }
            this.var_675.disable();
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         this.var_92 = param1.offer;
         this.attachStub(this.var_92.priceType);
         if(this.var_1951 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(this.var_92.priceInCredits));
            this.var_1951.caption = "${catalog.purchase.price.credits}";
         }
         var _loc3_:String = this.var_92.activityPointType == Purse.const_207 ? "pixels" : "activitypoints";
         if(this.var_1950 != null)
         {
            _loc4_ = "catalog.purchase.price.activitypoints." + this.var_92.activityPointType;
            _loc2_.registerParameter(_loc4_,_loc3_,this.var_92.priceInActivityPoints.toString());
            this.var_1950.caption = _loc2_.getKey(_loc4_);
         }
         if(this.var_1952 != null)
         {
            _loc4_ = "catalog.purchase.price.credits+activitypoints." + this.var_92.activityPointType;
            _loc2_.registerParameter(_loc4_,"credits",String(this.var_92.priceInCredits));
            _loc2_.registerParameter(_loc4_,_loc3_,String(this.var_92.priceInActivityPoints));
            this.var_1952.caption = _loc2_.getKey(_loc4_);
         }
         var _loc5_:IWindow = _window.findChildByName("activity_points_bg");
         if(_loc5_ != null)
         {
            _loc5_.color = this.var_92.activityPointType == 0 ? 6737151 : uint(13421772);
         }
         if(this.var_675 != null)
         {
            this.var_675.enable();
         }
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         this.var_1949 = param1.parameter;
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(this.var_92 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_92,page.pageId,this.var_1949);
         }
      }
      
      private function initPurchase(param1:CatalogWidgetInitPurchaseEvent) : void
      {
         if(this.var_92 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_92,page.pageId,this.var_1949,param1.enableBuyAsGift);
         }
      }
   }
}
