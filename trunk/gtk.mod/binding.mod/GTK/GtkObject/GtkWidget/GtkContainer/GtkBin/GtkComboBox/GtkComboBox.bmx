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
	Function gtk_combo_box_new:Byte Ptr()="gtk_combo_box_new"
	Function gtk_combo_box_new_with_model:Byte Ptr(model:Byte Ptr)="gtk_combo_box_new_with_model"
	Function gtk_combo_box_get_wrap_width:Int(combo_box:Byte Ptr)="gtk_combo_box_get_wrap_width"
	Function gtk_combo_box_set_wrap_width(combo_box:Byte Ptr,width:Int)="gtk_combo_box_set_wrap_width"
	Function gtk_combo_box_get_row_span_column:Int(combo_box:Byte Ptr)="gtk_combo_box_get_row_span_column"
	Function gtk_combo_box_set_row_span_column(combo_box:Byte Ptr,row_span:Int)="gtk_combo_box_set_row_span_column"
	Function gtk_combo_box_get_column_span_column:Int(combo_box:Byte Ptr)="gtk_combo_box_get_column_span_column"
	Function gtk_combo_box_set_column_span_column(combo_box:Byte Ptr,column_span:Int)="gtk_combo_box_set_column_span_column"
	Function gtk_combo_box_get_active:Int(combo_box:Byte Ptr)="gtk_combo_box_get_active"
	Function gtk_combo_box_set_active(combo_box:Byte Ptr,index_:Int)="gtk_combo_box_set_active"
	Function gtk_combo_box_get_active_iter:Byte(combo_box:Byte Ptr,iter:Byte Ptr)="gtk_combo_box_get_active_iter"
	Function gtk_combo_box_set_active_iter(combo_box:Byte Ptr,iter:Byte Ptr)="gtk_combo_box_set_active_iter"
	Function gtk_combo_box_get_model:Byte Ptr(combo_box:Byte Ptr)="gtk_combo_box_get_model"
	Function gtk_combo_box_set_model(combo_box:Byte Ptr,model:Byte Ptr)="gtk_combo_box_set_model"
	Function gtk_combo_box_new_text:Byte Ptr()="gtk_combo_box_new_text"
	Function gtk_combo_box_append_text(combo_box:Byte Ptr,text:Byte Ptr)="gtk_combo_box_append_text"
	Function gtk_combo_box_insert_text(combo_box:Byte Ptr,position:Int,text:Byte Ptr)="gtk_combo_box_insert_text"
	Function gtk_combo_box_prepend_text(combo_box:Byte Ptr,text:Byte Ptr)="gtk_combo_box_prepend_text"
	Function gtk_combo_box_remove_text(combo_box:Byte Ptr,position:Int)="gtk_combo_box_remove_text"
	Function gtk_combo_box_get_active_text:Byte Ptr(combo_box:Byte Ptr)="gtk_combo_box_get_active_text"
	Function gtk_combo_box_popup(combo_box:Byte Ptr)="gtk_combo_box_popup"
	Function gtk_combo_box_popdown(combo_box:Byte Ptr)="gtk_combo_box_popdown"
	Function gtk_combo_box_get_popup_accessible:Byte Ptr(combo_box:Byte Ptr)="gtk_combo_box_get_popup_accessible"
	Function gtk_combo_box_get_row_separator_func:Byte Ptr(combo_box:Byte Ptr)="gtk_combo_box_get_row_separator_func"
	Function gtk_combo_box_set_row_separator_func(combo_box:Byte Ptr,func:Byte Ptr,data:Byte Ptr,destroy:Byte)="gtk_combo_box_set_row_separator_func"
	Function gtk_combo_box_set_add_tearoffs(combo_box:Byte Ptr,add_tearoffs:Byte)="gtk_combo_box_set_add_tearoffs"
	Function gtk_combo_box_get_add_tearoffs:Byte(combo_box:Byte Ptr)="gtk_combo_box_get_add_tearoffs"
	Function gtk_combo_box_set_focus_on_click(combo:Byte Ptr,focus_on_click:Byte)="gtk_combo_box_set_focus_on_click"
	Function gtk_combo_box_get_focus_on_click:Byte(combo:Byte Ptr)="gtk_combo_box_get_focus_on_click"
End Extern
