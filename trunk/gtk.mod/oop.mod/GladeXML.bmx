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
Type GladeXML
	Field mHandle:Byte Ptr

	Function Create:GladeXML(Filename:String,Root:String="",Domain:String="")
		Local TempXML:GladeXML = New GladeXML
		Local RHandle:Byte Ptr
		If Root = "" RHandle = Null Else RHandle = Root.ToCString()
		Local DHandle:Byte Ptr
		If Domain = "" DHandle = Null Else DHandle = Domain.ToCString()
		TempXML.mHandle = glade_xml_new(Filename.ToCString(),RHandle,DHandle)
		Return TempXML
	End Function

	Function CreateFromHandle:GladeXML(Handle:Byte Ptr)
		Local TempXML:GladeXML = New GladeXML
		TempXML.mHandle = Handle
		Return TempXML
	End Function

	Method ConnectSignals()
		glade_xml_signal_autoconnect(mHandle)
	End Method

	Method GetWidget:Byte Ptr(Name:String)
		Return glade_xml_get_widget(mHandle,Name.ToCString())
	End Method
End Type

