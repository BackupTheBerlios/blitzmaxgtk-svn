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
	Function gtk_tips_query_new:Byte Ptr()="gtk_tips_query_new"
	Function gtk_tips_query_start_query(tips_query:Byte Ptr)="gtk_tips_query_start_query"
	Function gtk_tips_query_stop_query(tips_query:Byte Ptr)="gtk_tips_query_stop_query"
	Function gtk_tips_query_set_caller(tips_query:Byte Ptr,caller:Byte Ptr)="gtk_tips_query_set_caller"
	Function gtk_tips_query_set_labels(tips_query:Byte Ptr,label_inactive:Byte Ptr,label_no_tip:Byte Ptr)="gtk_tips_query_set_labels"
End Extern
