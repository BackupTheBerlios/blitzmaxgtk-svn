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
'GtkShadowType
	Const GTK_SHADOW_NONE=0
	Const GTK_SHADOW_IN=1
	Const GTK_SHADOW_OUT=2
	Const GTK_SHADOW_ETCHED_IN=4
	Const GTK_SHADOW_ETCHED_OUT=8

Extern
	Function gtk_frame_new:Byte Ptr(label:Byte Ptr)="gtk_frame_new"
	Function gtk_frame_set_label(frame:Byte Ptr,label:Byte Ptr)="gtk_frame_set_label"
	Function gtk_frame_set_label_widget(frame:Byte Ptr,label_widget:Byte Ptr)="gtk_frame_set_label_widget"
	Function gtk_frame_set_label_align(frame:Byte Ptr,xalign:double,yalign:double)="gtk_frame_set_label_align"
	Function gtk_frame_set_shadow_type(frame:Byte Ptr,Shadowtype:Byte)="gtk_frame_set_shadow_type"
	Function gtk_frame_get_label:Byte Ptr(frame:Byte Ptr)="gtk_frame_get_label"
	Function gtk_frame_get_label_align(frame:Byte Ptr,xalign:Byte Ptr,yalign:Byte Ptr)="gtk_frame_get_label_align"
	Function gtk_frame_get_label_widget:Byte Ptr(frame:Byte Ptr)="gtk_frame_get_label_widget"
	Function gtk_frame_get_shadow_type:Byte(frame:Byte Ptr)="gtk_frame_get_shadow_type"
End Extern
