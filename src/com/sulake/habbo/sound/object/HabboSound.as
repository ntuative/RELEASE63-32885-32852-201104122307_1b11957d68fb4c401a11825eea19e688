package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1089:Sound = null;
      
      private var var_435:SoundChannel = null;
      
      private var var_562:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1089 = param1;
         this.var_1089.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_562 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_435 = this.var_1089.play(0);
         this.volume = this.var_562;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_435.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_562;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_562 = param1;
         if(this.var_435 != null)
         {
            this.var_435.soundTransform = new SoundTransform(this.var_562);
         }
      }
      
      public function get position() : Number
      {
         return this.var_435.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1089.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1089.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
      }
      
      public function get fadeInSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
