package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2787:String;
      
      private var var_2786:String;
      
      private var var_2788:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2787 = param1;
         this.var_2786 = param2;
         this.var_2788 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2787;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2786;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2788;
      }
   }
}
