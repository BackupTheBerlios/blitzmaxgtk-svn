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
'GtkCListDragPos
Const GTK_CLIST_DRAG_NONE=1
Const GTK_CLIST_DRAG_BEFORE=2
Const GTK_CLIST_DRAG_INTO=3
Const GTK_CLIST_DRAG_AFTER=4


Extern
	Function gtk_clist_new:Byte Ptr(columns:Int)="gtk_clist_new"
	Function gtk_clist_new_with_titles:Byte Ptr(columns:Int,titles:Byte Ptr)="gtk_clist_new_with_titles"
	Function gtk_clist_set_shadow_type(clist:Byte Ptr,stype:Byte)="gtk_clist_set_shadow_type"
	Function gtk_clist_set_selection_mode(clist:Byte Ptr,mode:Byte)="gtk_clist_set_selection_mode"
	Function gtk_clist_freeze(clist:Byte Ptr)="gtk_clist_freeze"
	Function gtk_clist_thaw(clist:Byte Ptr)="gtk_clist_thaw"
	Function gtk_clist_column_titles_show(clist:Byte Ptr)="gtk_clist_column_titles_show"
	Function gtk_clist_column_titles_hide(clist:Byte Ptr)="gtk_clist_column_titles_hide"
	Function gtk_clist_column_title_active(clist:Byte Ptr,column:Int)="gtk_clist_column_title_active"
	Function gtk_clist_column_title_passive(clist:Byte Ptr,column:Int)="gtk_clist_column_title_passive"
	Function gtk_clist_column_titles_active(clist:Byte Ptr)="gtk_clist_column_titles_active"
	Function gtk_clist_column_titles_passive(clist:Byte Ptr)="gtk_clist_column_titles_passive"
	Function gtk_clist_set_column_title(clist:Byte Ptr,column:Int,title:Byte Ptr)="gtk_clist_set_column_title"
	Function gtk_clist_set_column_widget(clist:Byte Ptr,column:Int,widget:Byte Ptr)="gtk_clist_set_column_widget"
	Function gtk_clist_set_column_justification(clist:Byte Ptr,column:Int,justification:Byte)="gtk_clist_set_column_justification"
	Function gtk_clist_set_column_visibility(clist:Byte Ptr,column:Int,visible:Byte)="gtk_clist_set_column_visibility"
	Function gtk_clist_set_column_resizeable(clist:Byte Ptr,column:Int,resizeable:Byte)="gtk_clist_set_column_resizeable"
	Function gtk_clist_set_column_auto_resize(clist:Byte Ptr,column:Int,auto_resize:Byte)="gtk_clist_set_column_auto_resize"
	Function gtk_clist_optimal_column_width:Int(clist:Byte Ptr,column:Int)="gtk_clist_optimal_column_width"
	Function gtk_clist_set_column_width(clist:Byte Ptr,column:Int,width:Int)="gtk_clist_set_column_width"
	Function gtk_clist_set_column_min_width(clist:Byte Ptr,column:Int,min_width:Int)="gtk_clist_set_column_min_width"
	Function gtk_clist_set_column_max_width(clist:Byte Ptr,column:Int,max_width:Int)="gtk_clist_set_column_max_width"
	Function gtk_clist_set_row_height(clist:Byte Ptr,height:Int)="gtk_clist_set_row_height"
	Function gtk_clist_moveto(clist:Byte Ptr,row:Int,column:Int,row_align:Float,col_align:Float)="gtk_clist_moveto"
	Function gtk_clist_row_is_visible:Byte(clist:Byte Ptr,row:Int)="gtk_clist_row_is_visible"
	Function gtk_clist_get_cell_type:Byte(clist:Byte Ptr,row:Int,column:Int)="gtk_clist_get_cell_type"
	Function gtk_clist_set_text(clist:Byte Ptr,row:Int,column:Int,text:Byte Ptr)="gtk_clist_set_text"
	Function gtk_clist_get_text:Int(clist:Byte Ptr,row:Int,column:Int,text:Byte Ptr)="gtk_clist_get_text"
	Function gtk_clist_set_pixmap(clist:Byte Ptr,row:Int,column:Int,pixmap:Byte Ptr,mask:Byte Ptr)="gtk_clist_set_pixmap"
	Function gtk_clist_get_pixmap:Int(clist:Byte Ptr,row:Int,column:Int,pixmap:Byte Ptr,mask:Byte Ptr)="gtk_clist_get_pixmap"
	Function gtk_clist_set_pixtext(clist:Byte Ptr,row:Int,column:Int,text:Byte Ptr,spacing:Int,pixmap:Byte Ptr,mask:Byte Ptr)="gtk_clist_set_pixtext"
	Function gtk_clist_get_pixtext:Int(clist:Byte Ptr,row:Int,column:Int,text:Byte Ptr,spacing:Byte Ptr,pixmap:Byte Ptr,mask:Byte Ptr)="gtk_clist_get_pixtext"
	Function gtk_clist_set_foreground(clist:Byte Ptr,row:Int,color:Byte Ptr)="gtk_clist_set_foreground"
	Function gtk_clist_set_background(clist:Byte Ptr,row:Int,color:Byte Ptr)="gtk_clist_set_background"
	Function gtk_clist_set_cell_style(clist:Byte Ptr,row:Int,column:Int,style:Byte Ptr)="gtk_clist_set_cell_style"
	Function gtk_clist_get_cell_style:Byte Ptr(clist:Byte Ptr,row:Int,column:Int)="gtk_clist_get_cell_style"
	Function gtk_clist_set_row_style(clist:Byte Ptr,row:Int,style:Byte Ptr)="gtk_clist_set_row_style"
	Function gtk_clist_get_row_style:Byte Ptr(clist:Byte Ptr,row:Int)="gtk_clist_get_row_style"
	Function gtk_clist_set_shift(clist:Byte Ptr,row:Int,column:Int,vertical:Int,horizontal:Int)="gtk_clist_set_shift"
	Function gtk_clist_set_selectable(clist:Byte Ptr,row:Int,selectable:Byte)="gtk_clist_set_selectable"
	Function gtk_clist_get_selectable:Byte(clist:Byte Ptr,row:Int)="gtk_clist_get_selectable"
	Function gtk_clist_prepend:Int(clist:Byte Ptr,text:Byte Ptr)="gtk_clist_prepend"
	Function gtk_clist_append:Int(clist:Byte Ptr,text:Byte Ptr)="gtk_clist_append"
	Function gtk_clist_insert:Int(clist:Byte Ptr,row:Int,text:Byte Ptr)="gtk_clist_insert"
	Function gtk_clist_remove(clist:Byte Ptr,row:Int)="gtk_clist_remove"
	Function gtk_clist_set_row_data(clist:Byte Ptr,row:Int,data:Byte Ptr)="gtk_clist_set_row_data"
	Function gtk_clist_set_row_data_full(clist:Byte Ptr,row:Int,data:Byte Ptr,destroy:Byte)="gtk_clist_set_row_data_full"
	Function gtk_clist_get_row_data:Byte Ptr(clist:Byte Ptr,row:Int)="gtk_clist_get_row_data"
	Function gtk_clist_find_row_from_data:Int(clist:Byte Ptr,data:Byte Ptr)="gtk_clist_find_row_from_data"
	Function gtk_clist_select_row(clist:Byte Ptr,row:Int,column:Int)="gtk_clist_select_row"
	Function gtk_clist_unselect_row(clist:Byte Ptr,row:Int,column:Int)="gtk_clist_unselect_row"
	Function gtk_clist_undo_selection(clist:Byte Ptr)="gtk_clist_undo_selection"
	Function gtk_clist_clear(clist:Byte Ptr)="gtk_clist_clear"
	Function gtk_clist_get_selection_info:Int(clist:Byte Ptr,x:Int,y:Int,row:Byte Ptr,column:Byte Ptr)="gtk_clist_get_selection_info"
	Function gtk_clist_select_all(clist:Byte Ptr)="gtk_clist_select_all"
	Function gtk_clist_unselect_all(clist:Byte Ptr)="gtk_clist_unselect_all"
	Function gtk_clist_swap_rows(clist:Byte Ptr,row1:Int,row2:Int)="gtk_clist_swap_rows"
	Function gtk_clist_set_compare_func(clist:Byte Ptr,cmp_func:Byte Ptr)="gtk_clist_set_compare_func"
	Function gtk_clist_set_sort_column(clist:Byte Ptr,column:Int)="gtk_clist_set_sort_column"
	Function gtk_clist_set_sort_type(clist:Byte Ptr,sort_type:Byte)="gtk_clist_set_sort_type"
	Function gtk_clist_sort(clist:Byte Ptr)="gtk_clist_sort"
	Function gtk_clist_set_auto_sort(clist:Byte Ptr,auto_sort:Byte)="gtk_clist_set_auto_sort"
	Function gtk_clist_columns_autosize:Int(clist:Byte Ptr)="gtk_clist_columns_autosize"
	Function gtk_clist_get_column_title:Byte Ptr(clist:Byte Ptr,column:Int)="gtk_clist_get_column_title"
	Function gtk_clist_get_column_widget:Byte Ptr(clist:Byte Ptr,column:Int)="gtk_clist_get_column_widget"
	Function gtk_clist_get_hadjustment:Byte Ptr(clist:Byte Ptr)="gtk_clist_get_hadjustment"
	Function gtk_clist_get_vadjustment:Byte Ptr(clist:Byte Ptr)="gtk_clist_get_vadjustment"
	Function gtk_clist_row_move(clist:Byte Ptr,source_row:Int,dest_row:Int)="gtk_clist_row_move"
	Function gtk_clist_set_button_actions(clist:Byte Ptr,button:Int,button_actions:int)="gtk_clist_set_button_actions"
	Function gtk_clist_set_hadjustment(clist:Byte Ptr,adjustment:Byte Ptr)="gtk_clist_set_hadjustment"
	Function gtk_clist_set_reorderable(clist:Byte Ptr,reorderable:Byte)="gtk_clist_set_reorderable"
	Function gtk_clist_set_use_drag_icons(clist:Byte Ptr,use_icons:Byte)="gtk_clist_set_use_drag_icons"
	Function gtk_clist_set_vadjustment(clist:Byte Ptr,adjustment:Byte Ptr)="gtk_clist_set_vadjustment"
End Extern
