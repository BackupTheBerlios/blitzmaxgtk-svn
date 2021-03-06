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
	Function ((GtkIconView *icon_view:*GtkIconViewForeachFunc),path:Byte Ptr,data);:gpointer)=""
	Function gtk_icon_view_new:Byte Ptr()="gtk_icon_view_new"
	Function gtk_icon_view_new_with_model:Byte Ptr(model:Byte Ptr)="gtk_icon_view_new_with_model"
	Function gtk_icon_view_set_model(icon_view:Byte Ptr,model:Byte Ptr)="gtk_icon_view_set_model"
	Function gtk_icon_view_get_model:Byte Ptr(icon_view:Byte Ptr)="gtk_icon_view_get_model"
	Function gtk_icon_view_set_text_column(icon_view:Byte Ptr,column:gint)="gtk_icon_view_set_text_column"
	Function gtk_icon_view_get_text_column:gint(icon_view:Byte Ptr)="gtk_icon_view_get_text_column"
	Function gtk_icon_view_set_markup_column(icon_view:Byte Ptr,column:gint)="gtk_icon_view_set_markup_column"
	Function gtk_icon_view_get_markup_column:gint(icon_view:Byte Ptr)="gtk_icon_view_get_markup_column"
	Function gtk_icon_view_set_pixbuf_column(icon_view:Byte Ptr,column:gint)="gtk_icon_view_set_pixbuf_column"
	Function gtk_icon_view_get_pixbuf_column:gint(icon_view:Byte Ptr)="gtk_icon_view_get_pixbuf_column"
	Function gtk_icon_view_get_path_at_pos:Byte Ptr(icon_view:Byte Ptr,x:gint,y:gint)="gtk_icon_view_get_path_at_pos"
	Function gtk_icon_view_get_item_at_pos:gboolean(icon_view:Byte Ptr,x:gint,y:gint,*path:Byte Ptr,*cell:Byte Ptr)="gtk_icon_view_get_item_at_pos"
	Function gtk_icon_view_set_cursor(icon_view:Byte Ptr,path:Byte Ptr,cell:Byte Ptr,start_editing:gboolean)="gtk_icon_view_set_cursor"
	Function gtk_icon_view_get_cursor:gboolean(icon_view:Byte Ptr,*path:Byte Ptr,*cell:Byte Ptr)="gtk_icon_view_get_cursor"
	Function gtk_icon_view_selected_foreach(icon_view:Byte Ptr,func:GtkIconViewForeachFunc,data:gpointer)="gtk_icon_view_selected_foreach"
	Function gtk_icon_view_set_selection_mode(icon_view:Byte Ptr,mode:GtkSelectionMode)="gtk_icon_view_set_selection_mode"
	Function gtk_icon_view_get_selection_mode:GtkSelectionMode(icon_view:Byte Ptr)="gtk_icon_view_get_selection_mode"
	Function gtk_icon_view_set_orientation(icon_view:Byte Ptr,orientation:GtkOrientation)="gtk_icon_view_set_orientation"
	Function gtk_icon_view_get_orientation:GtkOrientation(icon_view:Byte Ptr)="gtk_icon_view_get_orientation"
	Function gtk_icon_view_set_columns(icon_view:Byte Ptr,columns:gint)="gtk_icon_view_set_columns"
	Function gtk_icon_view_get_columns:gint(icon_view:Byte Ptr)="gtk_icon_view_get_columns"
	Function gtk_icon_view_set_item_width(icon_view:Byte Ptr,item_width:gint)="gtk_icon_view_set_item_width"
	Function gtk_icon_view_get_item_width:gint(icon_view:Byte Ptr)="gtk_icon_view_get_item_width"
	Function gtk_icon_view_set_spacing(icon_view:Byte Ptr,spacing:gint)="gtk_icon_view_set_spacing"
	Function gtk_icon_view_get_spacing:gint(icon_view:Byte Ptr)="gtk_icon_view_get_spacing"
	Function gtk_icon_view_set_row_spacing(icon_view:Byte Ptr,row_spacing:gint)="gtk_icon_view_set_row_spacing"
	Function gtk_icon_view_get_row_spacing:gint(icon_view:Byte Ptr)="gtk_icon_view_get_row_spacing"
	Function gtk_icon_view_set_column_spacing(icon_view:Byte Ptr,column_spacing:gint)="gtk_icon_view_set_column_spacing"
	Function gtk_icon_view_get_column_spacing:gint(icon_view:Byte Ptr)="gtk_icon_view_get_column_spacing"
	Function gtk_icon_view_set_margin(icon_view:Byte Ptr,margin:gint)="gtk_icon_view_set_margin"
	Function gtk_icon_view_get_margin:gint(icon_view:Byte Ptr)="gtk_icon_view_get_margin"
	Function gtk_icon_view_select_path(icon_view:Byte Ptr,path:Byte Ptr)="gtk_icon_view_select_path"
	Function gtk_icon_view_unselect_path(icon_view:Byte Ptr,path:Byte Ptr)="gtk_icon_view_unselect_path"
	Function gtk_icon_view_path_is_selected:gboolean(icon_view:Byte Ptr,path:Byte Ptr)="gtk_icon_view_path_is_selected"
	Function gtk_icon_view_get_selected_items:Byte Ptr(icon_view:Byte Ptr)="gtk_icon_view_get_selected_items"
	Function gtk_icon_view_select_all(icon_view:Byte Ptr)="gtk_icon_view_select_all"
	Function gtk_icon_view_unselect_all(icon_view:Byte Ptr)="gtk_icon_view_unselect_all"
	Function gtk_icon_view_item_activated(icon_view:Byte Ptr,path:Byte Ptr)="gtk_icon_view_item_activated"
	Function gtk_icon_view_scroll_to_path(icon_view:Byte Ptr,path:Byte Ptr,use_align:gboolean,row_align:gfloat,col_align:gfloat)="gtk_icon_view_scroll_to_path"
	Function gtk_icon_view_get_visible_range:gboolean(icon_view:Byte Ptr,*start_path:Byte Ptr,*end_path:Byte Ptr)="gtk_icon_view_get_visible_range"
	Function gtk_icon_view_enable_model_drag_source(icon_view:Byte Ptr,start_button_mask:GdkModifierType,targets:Byte Ptr,n_targets:gint,actions:GdkDragAction)="gtk_icon_view_enable_model_drag_source"
	Function gtk_icon_view_enable_model_drag_dest(icon_view:Byte Ptr,targets:Byte Ptr,n_targets:gint,actions:GdkDragAction)="gtk_icon_view_enable_model_drag_dest"
	Function gtk_icon_view_unset_model_drag_source(icon_view:Byte Ptr)="gtk_icon_view_unset_model_drag_source"
	Function gtk_icon_view_unset_model_drag_dest(icon_view:Byte Ptr)="gtk_icon_view_unset_model_drag_dest"
	Function gtk_icon_view_set_reorderable(icon_view:Byte Ptr,reorderable:gboolean)="gtk_icon_view_set_reorderable"
	Function gtk_icon_view_get_reorderable:gboolean(icon_view:Byte Ptr)="gtk_icon_view_get_reorderable"
	Function gtk_icon_view_set_drag_dest_item(icon_view:Byte Ptr,path:Byte Ptr,pos:GtkIconViewDropPosition)="gtk_icon_view_set_drag_dest_item"
	Function gtk_icon_view_get_drag_dest_item(icon_view:Byte Ptr,*path:Byte Ptr,pos:Byte Ptr)="gtk_icon_view_get_drag_dest_item"
	Function gtk_icon_view_get_dest_item_at_pos:gboolean(icon_view:Byte Ptr,drag_x:gint,drag_y:gint,*path:Byte Ptr,pos:Byte Ptr)="gtk_icon_view_get_dest_item_at_pos"
	Function gtk_icon_view_create_drag_icon:Byte Ptr(icon_view:Byte Ptr,path:Byte Ptr)="gtk_icon_view_create_drag_icon"
End Extern
