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
	Function gtk_table_new:Byte Ptr(rows:guint,columns:guint,homogeneous:gboolean)="gtk_table_new"
	Function gtk_table_resize(table:Byte Ptr,rows:guint,columns:guint)="gtk_table_resize"
	Function gtk_table_attach(table:Byte Ptr,child:Byte Ptr,left_attach:guint,right_attach:guint,top_attach:guint,bottom_attach:guint,xoptions:GtkAttachOptions,yoptions:GtkAttachOptions,xpadding:guint,ypadding:guint)="gtk_table_attach"
	Function gtk_table_attach_defaults(table:Byte Ptr,widget:Byte Ptr,left_attach:guint,right_attach:guint,top_attach:guint,bottom_attach:guint)="gtk_table_attach_defaults"
	Function gtk_table_set_row_spacing(table:Byte Ptr,row:guint,spacing:guint)="gtk_table_set_row_spacing"
	Function gtk_table_set_col_spacing(table:Byte Ptr,column:guint,spacing:guint)="gtk_table_set_col_spacing"
	Function gtk_table_set_row_spacings(table:Byte Ptr,spacing:guint)="gtk_table_set_row_spacings"
	Function gtk_table_set_col_spacings(table:Byte Ptr,spacing:guint)="gtk_table_set_col_spacings"
	Function gtk_table_set_homogeneous(table:Byte Ptr,homogeneous:gboolean)="gtk_table_set_homogeneous"
	Function gtk_table_get_default_row_spacing:guint(table:Byte Ptr)="gtk_table_get_default_row_spacing"
	Function gtk_table_get_homogeneous:gboolean(table:Byte Ptr)="gtk_table_get_homogeneous"
	Function gtk_table_get_row_spacing:guint(table:Byte Ptr,row:guint)="gtk_table_get_row_spacing"
	Function gtk_table_get_col_spacing:guint(table:Byte Ptr,column:guint)="gtk_table_get_col_spacing"
	Function gtk_table_get_default_col_spacing:guint(table:Byte Ptr)="gtk_table_get_default_col_spacing"
End Extern
