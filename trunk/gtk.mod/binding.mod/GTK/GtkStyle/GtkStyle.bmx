Rem
	This file is part of the BlitzMax GTK-modules.
	The BlitzMax GTK-modules are free software; you can redistribute and/or modify
	them under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	at your option) any later version.
	
	The BlitzMax GTK-modules are distributed in the hope that they will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with the BlitzMax GTK-modules; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
End Rem
Extern
	Function gtk_style_new:Byte Ptr()="gtk_style_new"
	Function gtk_style_copy:Byte Ptr(style:Byte Ptr)="gtk_style_copy"
	Function gtk_style_attach:Byte Ptr(style:Byte Ptr,window:Byte Ptr)="gtk_style_attach"
	Function gtk_style_detach(style:Byte Ptr)="gtk_style_detach"
	Function gtk_style_ref:Byte Ptr(style:Byte Ptr)="gtk_style_ref"
	Function gtk_style_unref(style:Byte Ptr)="gtk_style_unref"
	Function gtk_style_set_background(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType)="gtk_style_set_background"
	Function gtk_style_apply_default_background(style:Byte Ptr,window:Byte Ptr,set_bg:gboolean,state_type:GtkStateType,area:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_style_apply_default_background"
	Function gtk_style_lookup_icon_set:Byte Ptr(style:Byte Ptr,stock_id:Byte Ptr)="gtk_style_lookup_icon_set"
	Function gtk_style_render_icon:Byte Ptr(style:Byte Ptr,source:Byte Ptr,direction:GtkTextDirection,state:GtkStateType,size:GtkIconSize,widget:Byte Ptr,detail:Byte Ptr)="gtk_style_render_icon"
	Function gtk_style_get_font:Byte Ptr(style:Byte Ptr)="gtk_style_get_font"
	Function gtk_style_set_font(style:Byte Ptr,font:Byte Ptr)="gtk_style_set_font"
	Function gtk_draw_hline(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,x1:gint,x2:gint,y:gint)="gtk_draw_hline"
	Function gtk_draw_vline(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,y1_:gint,y2_:gint,x:gint)="gtk_draw_vline"
	Function gtk_draw_shadow(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint)="gtk_draw_shadow"
	Function gtk_draw_polygon(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,points:Byte Ptr,npoints:gint,fill:gboolean)="gtk_draw_polygon"
	Function gtk_draw_arrow(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,arrow_type:GtkArrowType,fill:gboolean,x:gint,y:gint,width:gint,height:gint)="gtk_draw_arrow"
	Function gtk_draw_diamond(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint)="gtk_draw_diamond"
	Function gtk_draw_string(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,x:gint,y:gint,string:Byte Ptr)="gtk_draw_string"
	Function gtk_draw_box(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint)="gtk_draw_box"
	Function gtk_draw_box_gap(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint,gap_side:GtkPositionType,gap_x:gint,gap_width:gint)="gtk_draw_box_gap"
	Function gtk_draw_check(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint)="gtk_draw_check"
	Function gtk_draw_extension(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint,gap_side:GtkPositionType)="gtk_draw_extension"
	Function gtk_draw_flat_box(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint)="gtk_draw_flat_box"
	Function gtk_draw_focus(style:Byte Ptr,window:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_draw_focus"
	Function gtk_draw_handle(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint,orientation:GtkOrientation)="gtk_draw_handle"
	Function gtk_draw_option(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint)="gtk_draw_option"
	Function gtk_draw_shadow_gap(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint,gap_side:GtkPositionType,gap_x:gint,gap_width:gint)="gtk_draw_shadow_gap"
	Function gtk_draw_slider(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint,orientation:GtkOrientation)="gtk_draw_slider"
	Function gtk_draw_tab(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,x:gint,y:gint,width:gint,height:gint)="gtk_draw_tab"
	Function gtk_draw_expander(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,x:gint,y:gint,expander_style:GtkExpanderStyle)="gtk_draw_expander"
	Function gtk_draw_layout(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,use_text:gboolean,x:gint,y:gint,layout:Byte Ptr)="gtk_draw_layout"
	Function gtk_draw_resize_grip(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,edge:GdkWindowEdge,x:gint,y:gint,width:gint,height:gint)="gtk_draw_resize_grip"
	Function gtk_paint_arrow(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,arrow_type:GtkArrowType,fill:gboolean,x:gint,y:gint,width:gint,height:gint)="gtk_paint_arrow"
	Function gtk_paint_box(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_box"
	Function gtk_paint_box_gap(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint,gap_side:GtkPositionType,gap_x:gint,gap_width:gint)="gtk_paint_box_gap"
	Function gtk_paint_check(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_check"
	Function gtk_paint_diamond(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_diamond"
	Function gtk_paint_extension(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint,gap_side:GtkPositionType)="gtk_paint_extension"
	Function gtk_paint_flat_box(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_flat_box"
	Function gtk_paint_focus(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_focus"
	Function gtk_paint_handle(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint,orientation:GtkOrientation)="gtk_paint_handle"
	Function gtk_paint_hline(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x1:gint,x2:gint,y:gint)="gtk_paint_hline"
	Function gtk_paint_option(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_option"
	Function gtk_paint_polygon(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,points:Byte Ptr,npoints:gint,fill:gboolean)="gtk_paint_polygon"
	Function gtk_paint_shadow(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_shadow"
	Function gtk_paint_shadow_gap(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint,gap_side:GtkPositionType,gap_x:gint,gap_width:gint)="gtk_paint_shadow_gap"
	Function gtk_paint_slider(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint,orientation:GtkOrientation)="gtk_paint_slider"
	Function gtk_paint_string(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,string:Byte Ptr)="gtk_paint_string"
	Function gtk_paint_tab(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,shadow_type:GtkShadowType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_paint_tab"
	Function gtk_paint_vline(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,y1_:gint,y2_:gint,x:gint)="gtk_paint_vline"
	Function gtk_paint_expander(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,expander_style:GtkExpanderStyle)="gtk_paint_expander"
	Function gtk_paint_layout(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,use_text:gboolean,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,x:gint,y:gint,layout:Byte Ptr)="gtk_paint_layout"
	Function gtk_paint_resize_grip(style:Byte Ptr,window:Byte Ptr,state_type:GtkStateType,area:Byte Ptr,widget:Byte Ptr,detail:Byte Ptr,edge:GdkWindowEdge,x:gint,y:gint,width:gint,height:gint)="gtk_paint_resize_grip"
	Function gtk_draw_insertion_cursor(widget:Byte Ptr,drawable:Byte Ptr,area:Byte Ptr,location:Byte Ptr,is_primary:gboolean,direction:GtkTextDirection,draw_arrow:gboolean)="gtk_draw_insertion_cursor"
	Function gtk_border_copy:Byte Ptr(border_:Byte Ptr)="gtk_border_copy"
	Function gtk_border_free(border_:Byte Ptr)="gtk_border_free"
	Function :gboolean((const GParamSpec *pspec:*GtkRcPropertyParser),rc_string:Byte Ptr,property_value);:Byte Ptr)=""
End Extern
