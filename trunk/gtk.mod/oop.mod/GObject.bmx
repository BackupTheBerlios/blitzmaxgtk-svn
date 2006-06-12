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
Type GObject
	Field Handle:Byte Ptr

	Method SignalConnect:Long(Signal:String,TFunction:Byte Ptr,Data:Byte Ptr=Null,DestroyData:Byte Ptr=Null,ConnectFlags:Byte=0)
		Return g_signal_connect_data(Handle,Signal.ToCString(),TFunction,Data,DestroyData,ConnectFlags)
	End Method
	
	Method Unref()
		g_object_unref(Handle)
	End Method

	Method Set(key:String, value:Byte Ptr)
		g_object_set(Handle, key.toCString(), value)
	End Method
	
	Method SetString(key:String, value:String)
		g_object_set(Handle, key.toCString(), value.ToCString())
	End Method
	
	Method SetShort(key:String, value:Short)
		g_object_set(Handle, key.ToCString(), Byte Ptr(value))
	End Method
	
	Method SetInt(key:String, value:Int)
		g_object_set(Handle, key.toCString(), Byte Ptr(value))
	End Method
	
	Method SetLong(key:String, value:Long)
		g_object_set(Handle, key.ToCString(), Varptr value)
	End Method
	
	Method SetFloat(key:String, value:Float)
		g_object_set(Handle, key.toCString(), Varptr value)
	End Method

	Method SetDouble(key:String, value:Double)
		g_object_set(Handle, key.ToCString(), Varptr value)
	End Method
End Type

