package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2288:String;
      
      private var var_2286:Class;
      
      private var var_2287:Class;
      
      private var var_1676:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2288 = param1;
         this.var_2286 = param2;
         this.var_2287 = param3;
         if(rest == null)
         {
            this.var_1676 = new Array();
         }
         else
         {
            this.var_1676 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2288;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2286;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2287;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1676;
      }
   }
}
