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
	Function gtk_misc_set_alignment(misc:Byte Ptr,xalign:gfloat,yalign:gfloat)="gtk_misc_set_alignment"
	Function gtk_misc_set_padding(misc:Byte Ptr,xpad:gint,ypad:gint)="gtk_misc_set_padding"
	Function gtk_misc_get_alignment(misc:Byte Ptr,xalign:Byte Ptr,yalign:Byte Ptr)="gtk_misc_get_alignment"
	Function gtk_misc_get_padding(misc:Byte Ptr,xpad:Byte Ptr,ypad:Byte Ptr)="gtk_misc_get_padding"
End Extern
