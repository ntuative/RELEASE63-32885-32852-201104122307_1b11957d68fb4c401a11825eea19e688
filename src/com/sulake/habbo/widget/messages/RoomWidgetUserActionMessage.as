package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_654:String = "RWUAM_WHISPER_USER";
      
      public static const const_900:String = "RWUAM_IGNORE_USER";
      
      public static const const_791:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_609:String = "RWUAM_KICK_USER";
      
      public static const const_904:String = "RWUAM_BAN_USER";
      
      public static const const_832:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_808:String = "RWUAM_RESPECT_USER";
      
      public static const const_707:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_682:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_870:String = "RWUAM_START_TRADING";
      
      public static const const_735:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_547:String = "RWUAM_KICK_BOT";
      
      public static const const_770:String = "RWUAM_REPORT";
      
      public static const const_595:String = "RWUAM_PICKUP_PET";
      
      public static const const_1734:String = "RWUAM_TRAIN_PET";
      
      public static const const_537:String = " RWUAM_RESPECT_PET";
      
      public static const const_388:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_911:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
