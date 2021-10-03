package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_185;
         param1["bound_to_parent_rect"] = const_102;
         param1["child_window"] = const_1205;
         param1["embedded_controller"] = const_1181;
         param1["resize_to_accommodate_children"] = const_67;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_935;
         param1["mouse_dragging_target"] = const_251;
         param1["mouse_dragging_trigger"] = const_389;
         param1["mouse_scaling_target"] = const_326;
         param1["mouse_scaling_trigger"] = const_543;
         param1["horizontal_mouse_scaling_trigger"] = const_272;
         param1["vertical_mouse_scaling_trigger"] = const_239;
         param1["observe_parent_input_events"] = const_1217;
         param1["optimize_region_to_layout_size"] = const_453;
         param1["parent_window"] = const_1055;
         param1["relative_horizontal_scale_center"] = const_205;
         param1["relative_horizontal_scale_fixed"] = const_152;
         param1["relative_horizontal_scale_move"] = const_376;
         param1["relative_horizontal_scale_strech"] = const_383;
         param1["relative_scale_center"] = const_1124;
         param1["relative_scale_fixed"] = const_815;
         param1["relative_scale_move"] = const_1230;
         param1["relative_scale_strech"] = const_1194;
         param1["relative_vertical_scale_center"] = const_194;
         param1["relative_vertical_scale_fixed"] = const_135;
         param1["relative_vertical_scale_move"] = const_281;
         param1["relative_vertical_scale_strech"] = const_333;
         param1["on_resize_align_left"] = const_702;
         param1["on_resize_align_right"] = const_485;
         param1["on_resize_align_center"] = const_532;
         param1["on_resize_align_top"] = const_785;
         param1["on_resize_align_bottom"] = const_598;
         param1["on_resize_align_middle"] = const_599;
         param1["on_accommodate_align_left"] = const_1171;
         param1["on_accommodate_align_right"] = const_596;
         param1["on_accommodate_align_center"] = const_662;
         param1["on_accommodate_align_top"] = const_1061;
         param1["on_accommodate_align_bottom"] = const_470;
         param1["on_accommodate_align_middle"] = const_877;
         param1["route_input_events_to_parent"] = const_587;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1219;
         param1["scalable_with_mouse"] = const_1070;
         param1["reflect_horizontal_resize_to_parent"] = const_616;
         param1["reflect_vertical_resize_to_parent"] = const_552;
         param1["reflect_resize_to_parent"] = const_316;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1242;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
