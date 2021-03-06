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
	Function gtk_notebook_new:Byte Ptr()="gtk_notebook_new"
	Function gtk_notebook_append_page:Int(notebook:Byte Ptr,child:Byte Ptr,tab_label:Byte Ptr)="gtk_notebook_append_page"
	Function gtk_notebook_append_page_menu:Int(notebook:Byte Ptr,child:Byte Ptr,tab_label:Byte Ptr,menu_label:Byte Ptr)="gtk_notebook_append_page_menu"
	Function gtk_notebook_prepend_page:Int(notebook:Byte Ptr,child:Byte Ptr,tab_label:Byte Ptr)="gtk_notebook_prepend_page"
	Function gtk_notebook_prepend_page_menu:Int(notebook:Byte Ptr,child:Byte Ptr,tab_label:Byte Ptr,menu_label:Byte Ptr)="gtk_notebook_prepend_page_menu"
	Function gtk_notebook_insert_page:Int(notebook:Byte Ptr,child:Byte Ptr,tab_label:Byte Ptr,position:Int)="gtk_notebook_insert_page"
	Function gtk_notebook_insert_page_menu:Int(notebook:Byte Ptr,child:Byte Ptr,tab_label:Byte Ptr,menu_label:Byte Ptr,position:Int)="gtk_notebook_insert_page_menu"
	Function gtk_notebook_remove_page(notebook:Byte Ptr,page_num:Int)="gtk_notebook_remove_page"
	Function gtk_notebook_page_num:Int(notebook:Byte Ptr,child:Byte Ptr)="gtk_notebook_page_num"
	Function gtk_notebook_next_page(notebook:Byte Ptr)="gtk_notebook_next_page"
	Function gtk_notebook_prev_page(notebook:Byte Ptr)="gtk_notebook_prev_page"
	Function gtk_notebook_reorder_child(notebook:Byte Ptr,child:Byte Ptr,position:Int)="gtk_notebook_reorder_child"
	Function gtk_notebook_set_tab_pos(notebook:Byte Ptr,pos:Byte)="gtk_notebook_set_tab_pos"
	Function gtk_notebook_set_show_tabs(notebook:Byte Ptr,show_tabs:Byte)="gtk_notebook_set_show_tabs"
	Function gtk_notebook_set_show_border(notebook:Byte Ptr,show_border:Byte)="gtk_notebook_set_show_border"
	Function gtk_notebook_set_scrollable(notebook:Byte Ptr,scrollable:Byte)="gtk_notebook_set_scrollable"
	Function gtk_notebook_set_tab_border(notebook:Byte Ptr,border_width:int)="gtk_notebook_set_tab_border"
	Function gtk_notebook_popup_enable(notebook:Byte Ptr)="gtk_notebook_popup_enable"
	Function gtk_notebook_popup_disable(notebook:Byte Ptr)="gtk_notebook_popup_disable"
	Function gtk_notebook_get_current_page:Int(notebook:Byte Ptr)="gtk_notebook_get_current_page"
	Function gtk_notebook_get_menu_label:Byte Ptr(notebook:Byte Ptr,child:Byte Ptr)="gtk_notebook_get_menu_label"
	Function gtk_notebook_get_nth_page:Byte Ptr(notebook:Byte Ptr,page_num:Int)="gtk_notebook_get_nth_page"
	Function gtk_notebook_get_n_pages:Int(notebook:Byte Ptr)="gtk_notebook_get_n_pages"
	Function gtk_notebook_get_tab_label:Byte Ptr(notebook:Byte Ptr,child:Byte Ptr)="gtk_notebook_get_tab_label"
	Function gtk_notebook_query_tab_label_packing(notebook:Byte Ptr,child:Byte Ptr,expand:Byte Ptr,fill:Byte Ptr,pack_type:Byte Ptr)="gtk_notebook_query_tab_label_packing"
	Function gtk_notebook_set_homogeneous_tabs(notebook:Byte Ptr,homogeneous:Byte)="gtk_notebook_set_homogeneous_tabs"
	Function gtk_notebook_set_menu_label(notebook:Byte Ptr,child:Byte Ptr,menu_label:Byte Ptr)="gtk_notebook_set_menu_label"
	Function gtk_notebook_set_menu_label_text(notebook:Byte Ptr,child:Byte Ptr,menu_text:Byte Ptr)="gtk_notebook_set_menu_label_text"
	Function gtk_notebook_set_tab_hborder(notebook:Byte Ptr,tab_hborder:int)="gtk_notebook_set_tab_hborder"
	Function gtk_notebook_set_tab_label(notebook:Byte Ptr,child:Byte Ptr,tab_label:Byte Ptr)="gtk_notebook_set_tab_label"
	Function gtk_notebook_set_tab_label_packing(notebook:Byte Ptr,child:Byte Ptr,expand:Byte,fill:Byte,pack_type:Byte)="gtk_notebook_set_tab_label_packing"
	Function gtk_notebook_set_tab_label_text(notebook:Byte Ptr,child:Byte Ptr,tab_text:Byte Ptr)="gtk_notebook_set_tab_label_text"
	Function gtk_notebook_set_tab_vborder(notebook:Byte Ptr,tab_vborder:int)="gtk_notebook_set_tab_vborder"
	Function gtk_notebook_get_menu_label_text:Byte Ptr(notebook:Byte Ptr,child:Byte Ptr)="gtk_notebook_get_menu_label_text"
	Function gtk_notebook_get_scrollable:Byte(notebook:Byte Ptr)="gtk_notebook_get_scrollable"
	Function gtk_notebook_get_show_border:Byte(notebook:Byte Ptr)="gtk_notebook_get_show_border"
	Function gtk_notebook_get_show_tabs:Byte(notebook:Byte Ptr)="gtk_notebook_get_show_tabs"
	Function gtk_notebook_get_tab_label_text:Byte Ptr(notebook:Byte Ptr,child:Byte Ptr)="gtk_notebook_get_tab_label_text"
	Function gtk_notebook_get_tab_pos:Byte(notebook:Byte Ptr)="gtk_notebook_get_tab_pos"
	Function gtk_notebook_set_current_page(notebook:Byte Ptr,page_num:Int)="gtk_notebook_set_current_page"
End Extern
