package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_418:int = 1;
      
      public static const const_250:int = 2;
      
      public static const const_337:int = 3;
      
      public static const const_374:int = 4;
      
      public static const const_230:int = 5;
      
      public static const const_368:int = 1;
      
      public static const const_801:int = 2;
      
      public static const const_716:int = 3;
      
      public static const const_793:int = 4;
      
      public static const const_247:int = 5;
      
      public static const const_811:int = 6;
      
      public static const const_774:int = 7;
      
      public static const const_270:int = 8;
      
      public static const const_364:int = 9;
      
      public static const const_1888:int = 10;
      
      public static const const_749:int = 11;
      
      public static const const_525:int = 12;
       
      
      private var var_442:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_442 = new Array();
         this.var_442.push(new Tab(this._navigator,const_418,const_525,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_571));
         this.var_442.push(new Tab(this._navigator,const_250,const_368,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_571));
         this.var_442.push(new Tab(this._navigator,const_374,const_749,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1085));
         this.var_442.push(new Tab(this._navigator,const_337,const_247,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_571));
         this.var_442.push(new Tab(this._navigator,const_230,const_270,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_790));
         this.setSelectedTab(const_418);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_374;
      }
      
      public function get tabs() : Array
      {
         return this.var_442;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_442)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_442)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_442)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
