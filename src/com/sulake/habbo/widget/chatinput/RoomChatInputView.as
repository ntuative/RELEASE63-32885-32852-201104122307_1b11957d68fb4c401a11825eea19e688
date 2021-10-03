package com.sulake.habbo.widget.chatinput
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetChatTypingMessage;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class RoomChatInputView
   {
       
      
      private var _widget:RoomChatInputWidget;
      
      private var _window:IWindowContainer;
      
      private var var_24:ITextFieldWindow;
      
      private var _button:IWindow;
      
      private var var_1621:IWindow;
      
      private var var_2165:int = 0;
      
      private var _chatModeIdShout:String;
      
      private var var_1090:String;
      
      private var var_2164:String;
      
      private var var_1348:Boolean = false;
      
      private var var_583:Boolean = false;
      
      private var var_1347:Boolean = false;
      
      private var _typingTimer:Timer;
      
      private var var_411:Timer;
      
      private var var_510:String = "";
      
      public function RoomChatInputView(param1:RoomChatInputWidget)
      {
         super();
         this._widget = param1;
         this.var_1090 = param1.localizations.getKey("widgets.chatinput.mode.whisper",":tell");
         this._chatModeIdShout = param1.localizations.getKey("widgets.chatinput.mode.shout",":shout");
         this.var_2164 = param1.localizations.getKey("widgets.chatinput.mode.speak",":speak");
         this._typingTimer = new Timer(1000,1);
         this._typingTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onTypingTimerComplete);
         this.var_411 = new Timer(10000,1);
         this.var_411.addEventListener(TimerEvent.TIMER_COMPLETE,this.onIdleTimerComplete);
         this.createWindow();
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function dispose() : void
      {
         this._widget = null;
         this.var_24 = null;
         this._button = null;
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this._typingTimer != null)
         {
            this._typingTimer.reset();
            this._typingTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTypingTimerComplete);
            this._typingTimer = null;
         }
         if(this.var_411 != null)
         {
            this.var_411.reset();
            this.var_411.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onIdleTimerComplete);
            this.var_411 = null;
         }
      }
      
      private function createWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         var _loc1_:XmlAsset = this._widget.assets.getAssetByName("chatinput_window") as XmlAsset;
         if(_loc1_ == null || _loc1_.content == null)
         {
            return;
         }
         this._window = this._widget.windowManager.buildFromXML(_loc1_.content as XML,0) as IWindowContainer;
         this._window.x = (this._window.desktop.width - this._window.width) / 2;
         var _loc2_:int = this._widget.config.getKey("friendbar.enabled") == "true" ? 55 : 5;
         this._window.y = this._window.desktop.height - this._window.height - _loc2_;
         this._window.tags.push("room_widget_chatinput");
         this.var_24 = this._window.findChildByName("chat_input") as ITextFieldWindow;
         this._button = this._window.findChildByName("send_button");
         this.var_1621 = this._window.findChildByName("block_text");
         var _loc3_:int = this._window.y;
         var _loc4_:IWindow = this._window.findChildByName("send_button_text");
         _loc4_.caption = "${" + _loc4_.caption + "}";
         this._window.y = _loc3_;
         this.addEventListenerToChild(this.var_24);
         this.var_24.addEventListener(WindowKeyboardEvent.const_177,this.windowKeyEventProcessor);
         this.var_24.addEventListener(WindowEvent.const_99,this.onInputChanged);
         this._window.findChildByName("send_button").addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onSend);
         this.var_1348 = true;
         this.var_510 = "";
      }
      
      private function onSend(param1:WindowMouseEvent) : void
      {
         if(!this.var_1348)
         {
            this.sendChatFromInputField(this.var_2165);
         }
      }
      
      public function hideFloodBlocking() : void
      {
         this.var_24.visible = true;
         this.var_1621.visible = false;
         if(this._button != null)
         {
            this._button.enable();
         }
      }
      
      public function showFloodBlocking() : void
      {
         this.var_24.visible = false;
         this.var_1621.visible = true;
         if(this._button != null)
         {
            this._button.disable();
         }
      }
      
      public function updateBlockText(param1:int) : void
      {
         this._widget.localizations.registerParameter("chat.input.alert.flood","time",param1.toString());
      }
      
      public function displaySpecialChatMessage(param1:String, param2:String = "") : void
      {
         if(this._window == null || this.var_24 == null)
         {
            return;
         }
         this.var_24.enable();
         this.var_24.selectable = true;
         this.var_24.text = "";
         this.setInputFieldFocus();
         this.var_24.text += param1 + " ";
         if(param2.length > 0)
         {
            this.var_24.text += param2 + " ";
         }
         this.var_24.setSelection(this.var_24.text.length,this.var_24.text.length);
         this.var_510 = this.var_24.text;
      }
      
      private function addEventListenerToChild(param1:IWindow) : void
      {
         if(param1 != null)
         {
            param1.setParamFlag(HabboWindowParam.const_40,true);
            param1.addEventListener(WindowMouseEvent.const_43,this.windowMouseEventProcessor);
         }
      }
      
      private function windowMouseEventProcessor(param1:WindowEvent = null, param2:IWindow = null) : void
      {
         this.setInputFieldFocus();
      }
      
      private function windowKeyEventProcessor(param1:WindowEvent = null, param2:IWindow = null) : void
      {
         var _loc4_:* = 0;
         var _loc5_:Boolean = false;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(this._window == null || this._widget == null || this._widget.floodBlocked)
         {
            return;
         }
         if(this.anotherFieldHasFocus())
         {
            return;
         }
         var _loc3_:int = this.var_2165;
         this.setInputFieldFocus();
         if(param1 is WindowKeyboardEvent)
         {
            _loc6_ = param1 as WindowKeyboardEvent;
            _loc4_ = uint(_loc6_.charCode);
            _loc5_ = _loc6_.shiftKey;
         }
         if(param1 is KeyboardEvent)
         {
            _loc7_ = param1 as KeyboardEvent;
            _loc4_ = uint(_loc7_.charCode);
            _loc5_ = _loc7_.shiftKey;
         }
         if(_loc7_ == null && _loc6_ == null)
         {
            return;
         }
         if(_loc5_)
         {
            _loc3_ = 0;
         }
         if(_loc4_ == Keyboard.SPACE)
         {
            this.checkSpecialKeywordForInput();
         }
         if(_loc4_ == Keyboard.ENTER)
         {
            this.sendChatFromInputField(_loc3_);
         }
         if(_loc4_ == Keyboard.BACKSPACE)
         {
            if(this.var_24 != null)
            {
               _loc8_ = this.var_24.text;
               _loc9_ = _loc8_.split(" ");
               if(_loc9_[0] == this.var_1090 && _loc9_.length == 3 && _loc9_[2] == "")
               {
                  this.var_24.text = "";
                  this.var_510 = "";
               }
            }
         }
      }
      
      private function onWindowMoved(param1:WindowEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
      }
      
      private function onInputChanged(param1:WindowEvent) : void
      {
         var _loc2_:ITextFieldWindow = param1.window as ITextFieldWindow;
         if(_loc2_ == null)
         {
            return;
         }
         this.var_411.reset();
         var _loc3_:* = _loc2_.text.length == 0;
         if(_loc3_)
         {
            this.var_583 = false;
            this._typingTimer.start();
         }
         else
         {
            if(_loc2_.text.length > this.var_510.length + 1)
            {
               if(this._widget.allowPaste)
               {
                  this._widget.setLastPasteTime();
               }
               else
               {
                  _loc2_.text = "";
               }
            }
            this.var_510 = _loc2_.text;
            if(!this.var_583)
            {
               this.var_583 = true;
               this._typingTimer.reset();
               this._typingTimer.start();
            }
            this.var_411.start();
         }
      }
      
      private function checkSpecialKeywordForInput() : void
      {
         if(this.var_24 == null || this.var_24.text == "")
         {
            return;
         }
         var _loc1_:String = this.var_24.text;
         var _loc2_:String = this._widget.selectedUserName;
         if(_loc1_ == this.var_1090)
         {
            if(_loc2_.length > 0)
            {
               this.var_24.text += " " + this._widget.selectedUserName;
               this.var_24.setSelection(this.var_24.text.length,this.var_24.text.length);
               this.var_510 = this.var_24.text;
            }
         }
      }
      
      private function onIdleTimerComplete(param1:TimerEvent) : void
      {
         if(this.var_583)
         {
            this.var_1347 = false;
         }
         this.var_583 = false;
         this.sendTypingMessage();
      }
      
      private function onTypingTimerComplete(param1:TimerEvent) : void
      {
         if(this.var_583)
         {
            this.var_1347 = true;
         }
         this.sendTypingMessage();
      }
      
      private function sendTypingMessage() : void
      {
         if(this._widget == null)
         {
            return;
         }
         if(this._widget.floodBlocked)
         {
            return;
         }
         var _loc1_:RoomWidgetChatTypingMessage = new RoomWidgetChatTypingMessage(this.var_583);
         this._widget.messageListener.processWidgetMessage(_loc1_);
      }
      
      private function setInputFieldFocus() : void
      {
         if(this.var_24 == null)
         {
            return;
         }
         if(this.var_1348)
         {
            this.var_24.text = "";
            this.var_24.textColor = 0;
            this.var_24.italic = false;
            this.var_1348 = false;
            this.var_510 = "";
         }
         this.var_24.focus();
      }
      
      private function setInputFieldUnFocus() : void
      {
         if(this.var_24 == null)
         {
            return;
         }
         this.var_24.unfocus();
      }
      
      private function sendChatFromInputField(param1:int) : void
      {
         if(this.var_24 == null || this.var_24.text == "")
         {
            return;
         }
         var _loc2_:String = this.var_24.text;
         var _loc3_:Array = _loc2_.split(" ");
         var _loc4_:String = "";
         var _loc5_:* = "";
         switch(_loc3_[0])
         {
            case this.var_1090:
               param1 = 0;
               _loc4_ = _loc3_[1];
               _loc5_ = this.var_1090 + " " + _loc4_ + " ";
               _loc3_.shift();
               _loc3_.shift();
               break;
            case this._chatModeIdShout:
               param1 = 0;
               _loc3_.shift();
               break;
            case this.var_2164:
               param1 = 0;
               _loc3_.shift();
         }
         _loc2_ = _loc3_.join(" ");
         if(this._widget != null)
         {
            if(this._typingTimer.running)
            {
               this._typingTimer.reset();
            }
            if(this.var_411.running)
            {
               this.var_411.reset();
            }
            this._widget.sendChat(_loc2_,param1,_loc4_);
            this.var_583 = false;
            if(this.var_1347)
            {
               this.sendTypingMessage();
            }
            this.var_1347 = false;
         }
         this.var_24.text = _loc5_;
         this.var_510 = _loc5_;
      }
      
      private function anotherFieldHasFocus() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this.var_24 != null)
         {
            if(this.var_24.focused)
            {
               return false;
            }
         }
         var _loc1_:DisplayObject = this._window.context.getDesktopWindow().getDisplayObject();
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.stage;
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.focus;
               if(_loc3_ == null)
               {
                  return false;
               }
               if(_loc3_ is TextField)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
