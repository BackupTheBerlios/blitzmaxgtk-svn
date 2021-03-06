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
	Function gtk_label_new:Byte Ptr(str:Byte Ptr)="gtk_label_new"
	Function gtk_label_set_text(label:Byte Ptr,str:Byte Ptr)="gtk_label_set_text"
	Function gtk_label_get_text:Byte Ptr(label:Byte Ptr)="gtk_label_get_text"
	'Function gtk_label_set_attributes(label:Byte Ptr,attrs:Byte Ptr)="gtk_label_set_attributes"
	'Function gtk_label_set_markup(label:Byte Ptr,str:Byte Ptr)="gtk_label_set_markup"
	'Function gtk_label_set_markup_with_mnemonic(label:Byte Ptr,str:Byte Ptr)="gtk_label_set_markup_with_mnemonic"
	'Function gtk_label_set_pattern(label:Byte Ptr,pattern:Byte Ptr)="gtk_label_set_pattern"
	'Function gtk_label_set_justify(label:Byte Ptr,jtype:GtkJustification)="gtk_label_set_justify"
	'Function gtk_label_set_ellipsize(label:Byte Ptr,mode:PangoEllipsizeMode)="gtk_label_set_ellipsize"
	'Function gtk_label_set_width_chars(label:Byte Ptr,n_chars:gint)="gtk_label_set_width_chars"
	'Function gtk_label_set_max_width_chars(label:Byte Ptr,n_chars:gint)="gtk_label_set_max_width_chars"
	'Function gtk_label_get(label:Byte Ptr,*str:Byte Ptr)="gtk_label_get"
	'Function gtk_label_parse_uline:guint(label:Byte Ptr,string:Byte Ptr)="gtk_label_parse_uline"
	'Function gtk_label_set_line_wrap(label:Byte Ptr,wrap:gboolean)="gtk_label_set_line_wrap"
	'Function gtk_label_get_layout_offsets(label:Byte Ptr,x:Byte Ptr,y:Byte Ptr)="gtk_label_get_layout_offsets"
	'Function gtk_label_get_mnemonic_keyval:guint(label:Byte Ptr)="gtk_label_get_mnemonic_keyval"
	'Function gtk_label_get_selectable:gboolean(label:Byte Ptr)="gtk_label_get_selectable"
	'Function gchar*:const(label:Byte Ptr)="gchar*"
	'Function gtk_label_new_with_mnemonic:Byte Ptr(str:Byte Ptr)="gtk_label_new_with_mnemonic"
	'Function gtk_label_select_region(label:Byte Ptr,start_offset:gint,end_offset:gint)="gtk_label_select_region"
	'Function gtk_label_set_mnemonic_widget(label:Byte Ptr,widget:Byte Ptr)="gtk_label_set_mnemonic_widget"
	'Function gtk_label_set_selectable(label:Byte Ptr,setting:gboolean)="gtk_label_set_selectable"
	'Function gtk_label_set_text_with_mnemonic(label:Byte Ptr,str:Byte Ptr)="gtk_label_set_text_with_mnemonic"
	'Function gtk_label_get_attributes:Byte Ptr(label:Byte Ptr)="gtk_label_get_attributes"
	'Function gtk_label_get_justify:GtkJustification(label:Byte Ptr)="gtk_label_get_justify"
	'Function gtk_label_get_ellipsize:PangoEllipsizeMode(label:Byte Ptr)="gtk_label_get_ellipsize"
	'Function gtk_label_get_width_chars:gint(label:Byte Ptr)="gtk_label_get_width_chars"
	'Function gtk_label_get_max_width_chars:gint(label:Byte Ptr)="gtk_label_get_max_width_chars"
	'Function gchar*:const(label:Byte Ptr)="gchar*"
	'Function gtk_label_get_layout:Byte Ptr(label:Byte Ptr)="gtk_label_get_layout"
	'Function gtk_label_get_line_wrap:gboolean(label:Byte Ptr)="gtk_label_get_line_wrap"
	'Function gtk_label_get_mnemonic_widget:Byte Ptr(label:Byte Ptr)="gtk_label_get_mnemonic_widget"
	'Function gtk_label_get_selection_bounds:gboolean(label:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_label_get_selection_bounds"
	'Function gtk_label_get_use_markup:gboolean(label:Byte Ptr)="gtk_label_get_use_markup"
	'Function gtk_label_get_use_underline:gboolean(label:Byte Ptr)="gtk_label_get_use_underline"
	'Function gtk_label_get_single_line_mode:gboolean(label:Byte Ptr)="gtk_label_get_single_line_mode"
	'Function gtk_label_get_angle:gdouble(label:Byte Ptr)="gtk_label_get_angle"
	'Function gtk_label_set_label(label:Byte Ptr,str:Byte Ptr)="gtk_label_set_label"
	'Function gtk_label_set_use_markup(label:Byte Ptr,setting:gboolean)="gtk_label_set_use_markup"
	'Function gtk_label_set_use_underline(label:Byte Ptr,setting:gboolean)="gtk_label_set_use_underline"
	'Function gtk_label_set_single_line_mode(label:Byte Ptr,single_line_mode:gboolean)="gtk_label_set_single_line_mode"
	'Function gtk_label_set_angle(label:Byte Ptr,angle:gdouble)="gtk_label_set_angle"
	Function gtk_label_get_type:Long()
End Extern
