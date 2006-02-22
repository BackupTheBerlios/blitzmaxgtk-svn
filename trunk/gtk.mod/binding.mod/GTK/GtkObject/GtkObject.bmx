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
	Function gtk_object_sink:Byte Ptr(TObject:Byte Ptr)="gtk_object_sink"
	Function gtk_object_ref:Byte Ptr(TObject:Byte Ptr)="gtk_object_ref"
	Function gtk_object_unref(TObject:Byte Ptr)="gtk_object_unref"
	Function gtk_object_weakref(TObject:Byte Ptr,notify:Byte,data:Byte Ptr)="gtk_object_weakref"
	Function gtk_object_weakunref(TObject:Byte Ptr,notify:Byte,data:Byte Ptr)="gtk_object_weakunref"
	Function gtk_object_destroy(TObject:Byte Ptr)="gtk_object_destroy"
	Function gtk_object_set_data(TObject:Byte Ptr,key:Byte Ptr,data:Byte Ptr)="gtk_object_set_data"
	Function gtk_object_set_data_full(TObject:Byte Ptr,key:Byte Ptr,data:Byte Ptr,destroy:Byte)="gtk_object_set_data_full"
	Function gtk_object_remove_data(TObject:Byte Ptr,key:Byte Ptr)="gtk_object_remove_data"
	Function gtk_object_get_data:Byte Ptr(TObject:Byte Ptr,key:Byte Ptr)="gtk_object_get_data"
	Function gtk_object_remove_no_notify(TObject:Byte Ptr,key:Byte Ptr)="gtk_object_remove_no_notify"
	Function gtk_object_set_user_data(TObject:Byte Ptr,data:Byte Ptr)="gtk_object_set_user_data"
	Function gtk_object_get_user_data:Byte Ptr(TObject:Byte Ptr)="gtk_object_get_user_data"
	Function gtk_object_add_arg_type(arg_name:Byte Ptr,arg_type:Byte,arg_flags:int,arg_id:int)="gtk_object_add_arg_type"
	Function gtk_object_set_data_by_id(TObject:Byte Ptr,data_id:Int,data:Byte Ptr)="gtk_object_set_data_by_id"
	Function gtk_object_set_data_by_id_full(TObject:Byte Ptr,data_id:Int,data:Byte Ptr,destroy:Byte)="gtk_object_set_data_by_id_full"
	Function gtk_object_get_data_by_id:Byte Ptr(TObject:Byte Ptr,data_id:Int)="gtk_object_get_data_by_id"
	Function gtk_object_remove_data_by_id(TObject:Byte Ptr,data_id:Int)="gtk_object_remove_data_by_id"
	Function gtk_object_remove_no_notify_by_id(TObject:Byte Ptr,key_id:Int)="gtk_object_remove_no_notify_by_id"
End Extern
