package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1617:String = "pricing_model_unknown";
      
      public static const const_405:String = "pricing_model_single";
      
      public static const const_379:String = "pricing_model_multi";
      
      public static const const_517:String = "pricing_model_bundle";
      
      public static const PRICE_TYPE_NONE:String = "price_type_none";
      
      public static const const_950:String = "price_type_credits";
      
      public static const const_1266:String = "price_type_activitypoints";
      
      public static const const_1192:String = "price_type_credits_and_activitypoints";
       
      
      private var var_835:String;
      
      private var var_1268:String;
      
      private var _offerId:int;
      
      private var var_1991:String;
      
      private var var_1267:int;
      
      private var var_1269:int;
      
      private var var_1990:int;
      
      private var var_350:ICatalogPage;
      
      private var var_677:IProductContainer;
      
      private var var_1412:String = "";
      
      private var var_2785:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1991 = param2;
         this.var_1267 = param3;
         this.var_1269 = param4;
         this.var_1990 = param5;
         this.var_350 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get extraParameter() : String
      {
         return this.var_1412;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1412 = param1;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_350;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1991;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1267;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1269;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_677;
      }
      
      public function get pricingModel() : String
      {
         return this.var_835;
      }
      
      public function get priceType() : String
      {
         return this.var_1268;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2785;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2785 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1991 = "";
         this.var_1267 = 0;
         this.var_1269 = 0;
         this.var_1990 = 0;
         this.var_350 = null;
         if(this.var_677 != null)
         {
            this.var_677.dispose();
            this.var_677 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_835)
         {
            case const_405:
               this.var_677 = new SingleProductContainer(this,param1);
               break;
            case const_379:
               this.var_677 = new MultiProductContainer(this,param1);
               break;
            case const_517:
               this.var_677 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_835);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_835 = const_405;
            }
            else
            {
               this.var_835 = const_379;
            }
         }
         else if(param1.length > 1)
         {
            this.var_835 = const_517;
         }
         else
         {
            this.var_835 = const_1617;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1267 > 0 && this.var_1269 > 0)
         {
            this.var_1268 = const_1192;
         }
         else if(this.var_1267 > 0)
         {
            this.var_1268 = const_950;
         }
         else if(this.var_1269 > 0)
         {
            this.var_1268 = const_1266;
         }
         else
         {
            this.var_1268 = PRICE_TYPE_NONE;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_350.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_677.products)
         {
            _loc4_ = this.var_350.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
