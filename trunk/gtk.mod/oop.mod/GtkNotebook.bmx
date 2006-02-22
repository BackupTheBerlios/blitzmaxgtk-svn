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
Type GtkNotebook Extends GtkContainer
	Function Create:GtkNotebook()
		Local TempNotebook:GtkNotebook = New GtkNotebook
		TempNotebook.Handle = gtk_notebook_new()
		Return TempNotebook
	End Function

	Function CreateFromHandle:GtkNotebook(Handle:Byte Ptr)
		Local TempNotebook:GtkNotebook = New GtkNotebook
		TempNotebook.Handle = Handle
		Return TempNotebook
	End Function

	Method AppendPage(Child:GtkWidget,Label:GtkWidget=Null)
		Local LHandle:Byte Ptr = Null
		If Label <> Null Then LHandle = Label.Handle
		gtk_notebook_append_page(Handle,Child.Handle,LHandle)
	End Method

	Method AppendPageWithMenu(Child:GtkWidget,Menu:GtkWidget,Label:GtkWidget=Null)
		Local LHandle:Byte Ptr = Null
		If Label <> Null Then LHandle = Label.Handle
		gtk_notebook_append_page_menu(Handle,Child.Handle,LHandle,Menu.Handle)
	End Method

	Method PrependPage(Child:GtkWidget,Label:GtkWidget=Null)
		Local LHandle:Byte Ptr = Null
		If Label <> Null Then LHandle = Label.Handle
		gtk_notebook_prepend_page(Handle,Child.Handle,LHandle)
	End Method

	Method PrependPageWithMenu(Child:GtkWidget,Menu:GtkWidget,Label:GtkWidget=Null)
		Local LHandle:Byte Ptr = Null
		If Label <> Null Then LHandle = Label.Handle
		gtk_notebook_prepend_page_menu(Handle,Child.Handle,LHandle,Menu.Handle)
	End Method

	Method InsertPage(Child:GtkWidget,Pos:Int,Label:GtkWidget=Null)
		Local LHandle:Byte Ptr = Null
		If Label <> Null Then LHandle = Label.Handle
		gtk_notebook_insert_page(Handle,Child.Handle,LHandle,Pos)
	End Method

	Method InsertPageWithMenu(Child:GtkWidget,Menu:GtkWidget,Pos:Int,Label:GtkWidget=Null)
		Local LHandle:Byte Ptr = Null
		If Label <> Null Then LHandle = Label.Handle
		gtk_notebook_insert_page_menu(Handle,Child.Handle,LHandle,Menu.Handle,Pos)
	End Method

	Method RemovePage(Pos:Int)
		gtk_notebook_remove_page(Handle,Pos)
	End Method

	Method GetPageOfWidget:Int(Child:GtkWidget)
		Return gtk_notebook_page_num(Handle,Child.Handle)
	End Method

	Method NextPage()
		gtk_notebook_next_page(Handle)
	End Method

	Method PrevPage()
		gtk_notebook_prev_page(Handle)
	End Method

	Method ReorderChild(Child:GtkWidget,Pos:Int)
		gtk_notebook_reorder_child(Handle,Child.Handle,Pos)
	End Method

	Method SetTabPos(Pos:Byte) 'Pos: GtkPositionType
		gtk_notebook_set_tab_pos(Handle,Pos)
	End Method

	Method SetShowTabs(Value:Byte)
		gtk_notebook_set_show_tabs(Handle,Value)
	End Method

	Method SetShowBorder(Value:Byte)
		gtk_notebook_set_show_border(Handle, Value)
	End Method

	Method SetScrollable(Value:Byte)
		gtk_notebook_set_scrollable(Handle,Value)
	End Method

	Method EnablePopup()
		gtk_notebook_popup_enable(Handle)
	End Method

	Method DisablePopup()
		gtk_notebook_popup_disable(Handle)
	End Method

	Method GetCurrentPage:Int()
		Return gtk_notebook_get_current_page(Handle)
	End Method

	Method GetMenuLabel:Byte Ptr(Child:GtkWidget)
		Return gtk_notebook_get_menu_label(Handle,Child.Handle)
	End Method

	Method GetPage:Byte Ptr(Num:Int)
		Return gtk_notebook_get_nth_page(Handle,Num)
	End Method

	Method GetPagesCount:Int()
		Return gtk_notebook_get_n_pages(Handle)
	End Method

	Method GetTabLabel:Byte Ptr(Child:GtkWidget)
		Return gtk_notebook_get_tab_label(Handle,Child.Handle)
	End Method

	Method QueryTabLabelPacking(Child:GtkWidget,Expand:Byte Ptr,Fill:Byte Ptr,PackType:Byte Ptr) ' PackType: GtkPackType
		gtk_notebook_query_tab_label_packing(Handle,Child.Handle,Expand,Fill,PackType)
	End Method

	Method SetMenuLabel(Child:GtkWidget,MenuLabel:GtkWidget)
		gtk_notebook_set_menu_label(Handle,Child.Handle,MenuLabel.Handle)
	End Method

	Method SetMenuLabelText(Child:GtkWidget,Text:String)
		gtk_notebook_set_menu_label_text(Handle,Child.Handle,Text.ToCString())
	End Method

	Method SetTabLabel(Child:GtkWidget,Label:GtkWidget)
		gtk_notebook_set_tab_label(Handle,Child.Handle,Label.Handle)
	End Method

	Method SetTabLabelPacking(Child:GtkWidget,Expand:Byte,Fill:Byte,PackType:Byte)
		gtk_notebook_set_tab_label_packing(Handle,Child.Handle,Expand,Fill,PackType)
	End Method

	Method SetTabLabelText(Child:GtkWidget,Text:String)
		gtk_notebook_set_tab_label_text(Handle,Child.Handle,Text.ToCString())
	End Method
	
	Method GetMenuLabelText:String(Child:GtkWidget)
		Return String.FromCString(gtk_notebook_get_menu_label_text(Handle,Child.Handle))
	End Method

	Method GetScrollable:Byte()
		Return gtk_notebook_get_scrollable(Handle)
	End Method

	Method GetShowBorder:Byte()
		Return gtk_notebook_get_show_border(Handle)
	End Method

	Method GetShowTabs:Byte()
		Return gtk_notebook_get_show_tabs(Handle)
	End Method

	Method GetTabLabelText:String(Child:GtkWidget)
		Return String.FromCString(gtk_notebook_get_tab_label_text(Handle,Child.Handle))
	End Method

	Method GetTabPos:Byte() 'Return: GtkPositionType
		Return gtk_notebook_get_tab_pos(Handle)
	End Method

	Method SetCurrentPage(Num:Int)
		gtk_notebook_set_current_page(Handle,Num)
	End Method
End Type
