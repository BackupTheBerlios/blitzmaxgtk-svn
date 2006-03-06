type GtkCheckMenuItem extends GtkMenuItem
	field CheckMenuItemHandle:byte ptr
	function Create:GtkCheckMenuItem()
		local tempitem:GtkCheckMenuItem = new GtkCheckMenuItem
		tempitem.Handle = gtk_check_menu_item_new()
		tempitem.CheckMenuItemHandle = g_type_check_instance_cast(tempitem.Handle,gtk_check_menu_item_get_type())
		return tempitem
	end function
	
	function CreateWithLabel:GtkCheckMenuItem(Label:String)
		local tempitem:GtkCheckMenuItem = new GtkCheckMenuItem
		tempitem.Handle = gtk_check_menu_item_new_with_label(Label.ToCString())
		tempitem.CheckMenuItemHandle = g_type_check_instance_cast(tempitem.Handle,gtk_check_menu_item_get_type())
		return tempitem
	end function

	function CreateWithMnemonic:GtkCheckMenuItem(Mnemonic:string)
		local tempitem:GtkCheckMenuItem = new GtkCheckMenuItem
		tempitem.Handle = gtk_check_menu_item_new_with_mnemonic(Mnemonic.ToCString())
		tempitem.CheckMenuItemHandle = g_type_check_instance_cast(tempitem.Handle,gtk_check_menu_item_get_type())
		return tempitem
	end function

	function CreateFromHandle:GtkCheckMenuItem(Handle:byte ptr)
		local tempitem:GtkCheckMenuItem = new GtkCheckMenuItem
		tempitem.Handle = Handle
		tempitem.CheckMenuItemHandle = g_type_check_instance_cast(tempitem.Handle,gtk_check_menu_item_get_type())
		return tempitem
	end function

	method SetActive(active:byte)
		gtk_check_menu_item_set_active(CheckMenuItemHandle,active)
	end method

	method GetActive:byte()
		return gtk_check_menu_item_get_active(CheckMenuItemHandle)
	end method

	method SetDrawAsRadio(DrawAsRadio:byte)
		gtk_check_menu_item_set_draw_as_radio(CheckMenuItemHandle,DrawAsRadio)
	end method

	method GetDrawAsRadio:byte()
		return gtk_check_menu_item_get_draw_as_radio(CheckMenuItemHandle)
	end method
end type

