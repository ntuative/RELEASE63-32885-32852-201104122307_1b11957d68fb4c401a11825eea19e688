package
{
   import com.sulake.habbo.quest.HabboQuestEngine;
   import com.sulake.iid.IIDHabboQuestEngine;
   import mx.core.SimpleApplication;
   
   public class HabboQuestEngineCom extends SimpleApplication
   {
      
      public static var manifest:Class = HabboQuestEngineCom_manifest;
      
      public static var IIDHabboQuestEngine:Class = IIDHabboQuestEngine;
      
      public static var HabboQuestEngine:Class = HabboQuestEngine;
      
      public static const icon_quest_hidden:Class = HabboQuestEngineCom_icon_quest_hidden;
      
      public static const Campaign:Class = HabboQuestEngineCom_Campaign;
      
      public static const EntryArrows:Class = HabboQuestEngineCom_EntryArrows;
      
      public static const QuestEntry:Class = HabboQuestEngineCom_QuestEntry;
      
      public static const Quest:Class = HabboQuestEngineCom_Quest;
      
      public static const QuestDetails:Class = HabboQuestEngineCom_QuestDetails;
      
      public static const Quests:Class = HabboQuestEngineCom_Quests;
      
      public static const QuestTracker:Class = HabboQuestEngineCom_QuestTracker;
      
      public static const QuestCompletedDialog:Class = HabboQuestEngineCom_QuestCompletedDialog;
      
      public static const QuestHelp:Class = HabboQuestEngineCom_QuestHelp;
       
      
      public function HabboQuestEngineCom()
      {
         super();
      }
   }
}
