package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1475:String = "WE_DESTROY";
      
      public static const const_290:String = "WE_DESTROYED";
      
      public static const const_1755:String = "WE_OPEN";
      
      public static const const_1716:String = "WE_OPENED";
      
      public static const const_1560:String = "WE_CLOSE";
      
      public static const const_1559:String = "WE_CLOSED";
      
      public static const const_1605:String = "WE_FOCUS";
      
      public static const const_307:String = "WE_FOCUSED";
      
      public static const const_1555:String = "WE_UNFOCUS";
      
      public static const const_1690:String = "WE_UNFOCUSED";
      
      public static const const_1711:String = "WE_ACTIVATE";
      
      public static const const_458:String = "WE_ACTIVATED";
      
      public static const const_1480:String = "WE_DEACTIVATE";
      
      public static const const_467:String = "WE_DEACTIVATED";
      
      public static const const_334:String = "WE_SELECT";
      
      public static const const_56:String = "WE_SELECTED";
      
      public static const const_577:String = "WE_UNSELECT";
      
      public static const const_506:String = "WE_UNSELECTED";
      
      public static const const_1629:String = "WE_LOCK";
      
      public static const const_1582:String = "WE_LOCKED";
      
      public static const const_1479:String = "WE_UNLOCK";
      
      public static const const_1541:String = "WE_UNLOCKED";
      
      public static const const_736:String = "WE_ENABLE";
      
      public static const const_280:String = "WE_ENABLED";
      
      public static const const_896:String = "WE_DISABLE";
      
      public static const const_187:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_260:String = "WE_RELOCATED";
      
      public static const const_1110:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1573:String = "WE_MINIMIZE";
      
      public static const const_1509:String = "WE_MINIMIZED";
      
      public static const const_1619:String = "WE_MAXIMIZE";
      
      public static const const_1707:String = "WE_MAXIMIZED";
      
      public static const const_1726:String = "WE_RESTORE";
      
      public static const const_1566:String = "WE_RESTORED";
      
      public static const const_570:String = "WE_CHILD_ADDED";
      
      public static const const_417:String = "WE_CHILD_REMOVED";
      
      public static const const_188:String = "WE_CHILD_RELOCATED";
      
      public static const const_145:String = "WE_CHILD_RESIZED";
      
      public static const const_293:String = "WE_CHILD_ACTIVATED";
      
      public static const const_743:String = "WE_PARENT_ADDED";
      
      public static const const_1583:String = "WE_PARENT_REMOVED";
      
      public static const const_1486:String = "WE_PARENT_RELOCATED";
      
      public static const const_1146:String = "WE_PARENT_RESIZED";
      
      public static const const_1095:String = "WE_PARENT_ACTIVATED";
      
      public static const const_164:String = "WE_OK";
      
      public static const const_573:String = "WE_CANCEL";
      
      public static const const_99:String = "WE_CHANGE";
      
      public static const const_523:String = "WE_SCROLL";
      
      public static const const_172:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_694:IWindow;
      
      protected var var_1069:Boolean;
      
      protected var var_477:Boolean;
      
      protected var var_573:Boolean;
      
      protected var var_695:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_694 = param3;
         _loc5_.var_477 = param4;
         _loc5_.var_573 = false;
         _loc5_.var_695 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_694;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_477;
      }
      
      public function recycle() : void
      {
         if(this.var_573)
         {
            throw new Error("Event already recycled!");
         }
         this.var_694 = null;
         this._window = null;
         this.var_573 = true;
         this.var_1069 = false;
         this.var_695.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1069;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1069 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1069;
      }
      
      public function stopPropagation() : void
      {
         this.var_1069 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1069 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_477 + " window: " + this._window + " }";
      }
   }
}
