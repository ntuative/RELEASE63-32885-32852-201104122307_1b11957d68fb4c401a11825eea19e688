package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_765;
         param1["bitmap"] = const_680;
         param1["border"] = const_919;
         param1["border_notify"] = const_1469;
         param1["button"] = const_572;
         param1["button_thick"] = const_709;
         param1["button_icon"] = const_1496;
         param1["button_group_left"] = const_944;
         param1["button_group_center"] = const_668;
         param1["button_group_right"] = const_820;
         param1["canvas"] = const_920;
         param1["checkbox"] = const_845;
         param1["closebutton"] = const_1073;
         param1["container"] = const_396;
         param1["container_button"] = const_949;
         param1["display_object_wrapper"] = const_797;
         param1["dropmenu"] = const_513;
         param1["dropmenu_item"] = const_480;
         param1["frame"] = const_426;
         param1["frame_notify"] = const_1535;
         param1["header"] = const_929;
         param1["html"] = const_1268;
         param1["icon"] = const_1127;
         param1["itemgrid"] = const_1091;
         param1["itemgrid_horizontal"] = const_483;
         param1["itemgrid_vertical"] = const_777;
         param1["itemlist"] = const_1147;
         param1["itemlist_horizontal"] = const_415;
         param1["itemlist_vertical"] = const_387;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1717;
         param1["menu"] = const_1584;
         param1["menu_item"] = const_1642;
         param1["submenu"] = const_1255;
         param1["minimizebox"] = const_1548;
         param1["notify"] = const_1639;
         param1["null"] = const_753;
         param1["password"] = const_675;
         param1["radiobutton"] = const_953;
         param1["region"] = const_580;
         param1["restorebox"] = const_1718;
         param1["scaler"] = const_601;
         param1["scaler_horizontal"] = const_1528;
         param1["scaler_vertical"] = const_1529;
         param1["scrollbar_horizontal"] = const_613;
         param1["scrollbar_vertical"] = const_655;
         param1["scrollbar_slider_button_up"] = const_1228;
         param1["scrollbar_slider_button_down"] = const_1258;
         param1["scrollbar_slider_button_left"] = const_1065;
         param1["scrollbar_slider_button_right"] = const_1185;
         param1["scrollbar_slider_bar_horizontal"] = const_1166;
         param1["scrollbar_slider_bar_vertical"] = const_1113;
         param1["scrollbar_slider_track_horizontal"] = const_1083;
         param1["scrollbar_slider_track_vertical"] = const_1116;
         param1["scrollable_itemlist"] = const_1673;
         param1["scrollable_itemlist_vertical"] = const_558;
         param1["scrollable_itemlist_horizontal"] = const_1051;
         param1["selector"] = const_758;
         param1["selector_list"] = const_772;
         param1["submenu"] = const_1255;
         param1["tab_button"] = const_787;
         param1["tab_container_button"] = const_1183;
         param1["tab_context"] = const_422;
         param1["tab_content"] = const_1149;
         param1["tab_selector"] = const_939;
         param1["text"] = const_520;
         param1["input"] = const_850;
         param1["toolbar"] = const_1623;
         param1["tooltip"] = const_411;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
