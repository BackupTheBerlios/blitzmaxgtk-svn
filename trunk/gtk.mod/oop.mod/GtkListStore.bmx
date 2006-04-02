type GtkListStore extends GObject
	function create:GtkListStore(types:long[])
		local templiststore:GtkListStore = new GtkListStore
		templiststore.Handle = gtk_list_store_newv(types.Length-1,types)
		return templiststore
	end function

	method SetColumnTypes(types:long[])
		gtk_list_store_set_column_types(Handle,types.Length,types)
	end method
	
	method SetValue(iter:GtkTreeIter, Column:int, value:byte ptr)
		gtk_list_store_set_value(Handle,iter,column,value)
	end method

	method Remove(iter:GtkTreeIter)
		gtk_list_store_remove(Handle,iter)
	end method
	
	method Insert:GtkTreeIter(Position:int)
		local iter:GtkTreeIter = new GtkTreeIter
		gtk_list_store_insert(Handle,iter,position)
		return iter
	end method
	
	method InsertKeepIter(Iter:GtkTreeIter,Position:int)
		gtk_list_store_insert(Handle,iter,position)
	end method
	
	method InsertBefore:GtkTreeIter(sibling:GtkTreeIter)
		local iter:GtkTreeIter = new GtkTreeIter
		gtk_list_store_insert_before(Handle,iter,sibling)
		return iter
	end method
	
	method InsertBeforeKeepIter(Iter:GtkTreeIter,Sibling:GtkTreeIter)
		gtk_list_store_insert_before(Handle,iter,sibling)
	end method
	
	method InsertAfter:GtkTreeIter(sibling:GtkTreeIter)
		local iter:GtkTreeIter = new GtkTreeIter
		gtk_list_store_insert_after(Handle,iter,sibling)
		return iter
	end method
	
	method InsertAfterKeepIter(Iter:GtkTreeIter,Sibling:GtkTreeIter)
		gtk_list_store_insert_after(Handle,Iter,Sibling)
	end method
end type



