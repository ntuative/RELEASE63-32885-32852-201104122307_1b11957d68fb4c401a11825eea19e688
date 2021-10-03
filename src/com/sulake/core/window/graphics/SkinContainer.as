package com.sulake.core.window.graphics
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.graphics.renderer.BitmapDataRenderer;
   import com.sulake.core.window.graphics.renderer.BitmapSkinRenderer;
   import com.sulake.core.window.graphics.renderer.FillSkinRenderer;
   import com.sulake.core.window.graphics.renderer.ISkinRenderer;
   import com.sulake.core.window.graphics.renderer.LabelRenderer;
   import com.sulake.core.window.graphics.renderer.NullSkinRenderer;
   import com.sulake.core.window.graphics.renderer.ShapeSkinRenderer;
   import com.sulake.core.window.graphics.renderer.SkinRenderer;
   import com.sulake.core.window.graphics.renderer.TextSkinRenderer;
   import com.sulake.core.window.utils.DefaultAttStruct;
   import com.sulake.core.window.utils.StateCodeTable;
   import com.sulake.core.window.utils.TypeCodeTable;
   import flash.utils.Dictionary;
   
   public class SkinContainer implements ISkinContainer
   {
      
      private static const const_964:uint = 8;
      
      private static const const_1274:String = "skin";
      
      private static const const_1277:String = "bitmap";
      
      private static const const_1276:String = "fill";
      
      private static const const_1279:String = "text";
      
      private static const const_1275:String = "label";
      
      private static const const_1278:String = "shape";
      
      private static const RENDERER_TYPE_UNKNOWN:String = "unknown";
      
      private static const RENDERER_TYPE_NULL:String = "null";
      
      protected static var var_334:Array;
       
      
      private var _disposed:Boolean = false;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_886:Dictionary;
      
      private var var_885:Dictionary;
      
      private var var_408:Dictionary;
      
      private var var_1613:Dictionary;
      
      private var var_2139:Dictionary;
      
      private var var_2141:Dictionary;
      
      private var var_2140:Dictionary;
      
      public function SkinContainer(param1:XML, param2:IAssetLibrary)
      {
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         super();
         this._assetLibrary = param2;
         this.var_886 = new Dictionary();
         this.var_885 = new Dictionary();
         this.var_1613 = new Dictionary();
         this.var_2139 = new Dictionary();
         TypeCodeTable.fillTables(this.var_1613,this.var_2139);
         this.var_2141 = new Dictionary();
         this.var_2140 = new Dictionary();
         StateCodeTable.fillTables(this.var_2141,this.var_2140);
         this.var_408 = new Dictionary();
         this.var_408[const_1274] = BitmapSkinRenderer;
         this.var_408[const_1277] = BitmapDataRenderer;
         this.var_408[const_1276] = FillSkinRenderer;
         this.var_408[const_1279] = TextSkinRenderer;
         this.var_408[const_1275] = LabelRenderer;
         this.var_408[const_1278] = ShapeSkinRenderer;
         this.var_408[RENDERER_TYPE_UNKNOWN] = SkinRenderer;
         this.var_408[RENDERER_TYPE_NULL] = NullSkinRenderer;
         if(var_334 == null)
         {
            var_334 = new Array();
            var_334.push(WindowState.const_65);
            var_334.push(WindowState.const_83);
            var_334.push(WindowState.const_97);
            var_334.push(WindowState.const_53);
            var_334.push(WindowState.const_101);
            var_334.push(WindowState.const_84);
            var_334.push(WindowState.const_113);
            var_334.push(WindowState.const_96);
         }
         if(param1 != null)
         {
            _loc3_ = param1.child("component");
            _loc4_ = uint(_loc3_.length());
            if(_loc4_ > 0)
            {
               _loc18_ = 0;
               while(_loc18_ < _loc4_)
               {
                  _loc5_ = _loc3_[_loc18_];
                  _loc7_ = _loc5_.attribute("type");
                  _loc8_ = _loc5_.attribute("style");
                  _loc9_ = uint(_loc5_.attribute("blend") as uint);
                  _loc10_ = uint(_loc5_.attribute("color") as uint);
                  _loc11_ = _loc5_.attribute("asset");
                  _loc12_ = _loc5_.attribute("layout");
                  _loc15_ = _loc5_.attribute("renderer");
                  _loc6_ = _loc5_.child("states");
                  _loc16_ = this.var_408[_loc15_];
                  if(_loc16_)
                  {
                     _loc14_ = new _loc16_(_loc12_);
                     if(_loc14_)
                     {
                        _loc13_ = this._assetLibrary.getAssetByName(_loc11_);
                        _loc14_.parse(_loc13_,_loc6_,this._assetLibrary);
                     }
                  }
                  _loc17_ = new DefaultAttStruct();
                  _loc17_.var_2870 = !!_loc5_.@treshold[0] ? uint(uint(_loc5_.@treshold[0])) : uint(10);
                  _loc17_.background = !!_loc5_.@background[0] ? _loc5_.@background[0] == "true" : false;
                  _loc17_.blend = !!_loc5_.@blend[0] ? Number(Number(_loc5_.@blend[0])) : Number(1);
                  _loc17_.color = !!_loc5_.@color[0] ? uint(uint(_loc5_.@color[0])) : uint(16777215);
                  _loc17_.width_min = !!_loc5_.@width_min[0] ? int(int(_loc5_.@width_min[0])) : int(int.MIN_VALUE);
                  _loc17_.width_max = !!_loc5_.@width_max[0] ? int(int(_loc5_.@width_max[0])) : int(int.MAX_VALUE);
                  _loc17_.height_min = !!_loc5_.@height_min[0] ? int(int(_loc5_.@height_min[0])) : int(int.MIN_VALUE);
                  _loc17_.height_max = !!_loc5_.@height_max[0] ? int(int(_loc5_.@height_max[0])) : int(int.MAX_VALUE);
                  this.addSkinRenderer(this.var_1613[_loc7_],uint(_loc8_),_loc14_,_loc17_);
                  _loc18_++;
               }
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         this.var_886 = null;
         this.var_885 = null;
         this._assetLibrary = null;
         this._disposed = true;
      }
      
      public function addSkinRenderer(param1:uint, param2:uint, param3:ISkinRenderer, param4:DefaultAttStruct) : void
      {
         if(this.var_886[param1] == null)
         {
            this.var_886[param1] = new Array(const_964);
         }
         this.var_886[param1][param2] = param3;
         if(this.var_885[param1] == null)
         {
            this.var_885[param1] = new Array(const_964);
         }
         this.var_885[param1][param2] = param4;
      }
      
      public function getSkinRendererByTypeAndStyle(param1:uint, param2:uint) : ISkinRenderer
      {
         var _loc4_:* = null;
         var _loc3_:Array = this.var_886[param1];
         if(_loc3_)
         {
            _loc4_ = _loc3_[param2];
            if(!_loc4_ && param2 != WindowStyle.const_215)
            {
               _loc4_ = _loc3_["null"];
            }
         }
         return _loc4_;
      }
      
      public function getDefaultAttributesByTypeAndStyle(param1:uint, param2:uint) : DefaultAttStruct
      {
         var _loc4_:* = null;
         var _loc3_:Array = this.var_885[param1];
         if(_loc3_)
         {
            _loc4_ = _loc3_[param2];
            if(!_loc4_ && param2 != WindowStyle.const_215)
            {
               _loc4_ = _loc3_["null"];
            }
         }
         return _loc4_;
      }
      
      public function getTheActualState(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc5_:int = 0;
         var _loc4_:ISkinRenderer = this.getSkinRendererByTypeAndStyle(param1,param2);
         if(_loc4_)
         {
            for each(_loc5_ in var_334)
            {
               if((param3 & _loc5_) == _loc5_)
               {
                  if(_loc4_.isStateDrawable(_loc5_))
                  {
                     return _loc5_;
                  }
               }
            }
         }
         return 0;
      }
   }
}
