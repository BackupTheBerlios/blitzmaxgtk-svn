type GtkListStore extends GObject
	function create:GtkListStore(types:int[])
		local templiststore:GtkListStore = new GtkListStore
		templiststore.Handle = gtk_list_store_newv(types.Length,types)
		return templiststore
	end function

	method SetColumnTypes(types:int[])
		gtk_list_store_set_column_types(Handle,types.Length,types)
	end method
	
	method SetValue(iter:GtkTreeIter, Column:int, value:byte ptr)
		gtk_list_store_set_value(Handle,iter,column,value)
	end method
end type

