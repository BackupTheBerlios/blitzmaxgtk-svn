Type GtkTreeModel Extends GObject
	Field TreeModelHandle:Byte ptr
End type

Type GtkTreeStore Extends GtkTreeModel
	Function Create:GtkTreeStore(types:Int[])
		Local tempstore:GtkTreeStore = New GtkTreeStore
		tempstore.Handle = gtk_tree_store_newv(types.Length, types)
		tempstore.TreeModelHandle = g_type_check_instance_cast(tempstore.Handle, gtk_tree_model_get_type())
		Return tempstore
	End Function

	Function CreateFromHandle:GtkTreeStore(Handle:Byte ptr)
		Local tempstore:GtkTreeStore = New GtkTreeStore
		tempstore.Handle = Handle
		tempstore.TreeModelHandle = g_type_check_instance_cast(tempstore.Handle, gtk_tree_model_get_type())
		Return tempstore
	End Function

	Method Insert:GtkTreeIter(Parent:GtkTreeIter=Null, position:Int)
		Local parentiter:GtkTreeIterB = null
		If parentiter <> Null Then parentiter = Parent.iter
		Local tempiter:GtkTreeIterB = New GtkTreeIterB
		gtk_tree_store_insert(Handle, tempiter, parentiter, position)
		Local tIter:GtkTreeIter = GtkTreeIter.CreateFromIter(tempiter,Self)
	End Method
	
	Method Append:GtkTreeIter(Parent:GtkTreeIter = Null)
		Local tempiter:GtkTreeIterB = New GtkTreeIterB
		If parent = Null then
			gtk_tree_store_append(Handle, tempiter, Null)
		Else
			gtk_tree_store_append(Handle, tempiter, Parent.iter)
		End if
		Local tIter:GtkTreeIter = GtkTreeIter.CreateFromIter(tempiter,Self)
		Return tIter
	End method
End Type

Type GtkTreeIter
	Field iter:GtkTreeIterB
	Field store:GtkTreeStore
	
	Function CreateFromIter:GtkTreeIter(Iter:GtkTreeIterB,store:GtkTreeStore)
		Local tempiter:GtkTreeIter = New GtkTreeIter
		tempiter.iter = Iter
		tempiter.store = store
		Return tempiter
	End Function
	
	Method SetValue(column:int, value:Byte Ptr)
		gtk_tree_store_set(store.handle, iter, column, value)
	End method
End Type

Type GtkTreeView Extends GtkContainer
	Function Create:GtkTreeView()
		Local tempview:GtkTreeView = New GtkTreeView
		tempview.Handle = gtk_tree_view_new()
		Return tempview
	End Function
	
	Function CreateFromHandle:GtkTreeView(Handle:Byte ptr)
		Local tempstore:GtkTreeView = New GtkTreeView
		  tempstore.Handle = Handle
		Return tempstore
	End Function

	Function CreateWithModel:GtkTreeView(model:GtkTreeModel)
		Local tempview:GtkTreeView = New GtkTreeView
		tempview.Handle = gtk_tree_view_new_with_model(model.TreeModelHandle)
		Return tempview
	End function

	Method SetModel(model:GtkTreeModel)
		gtk_tree_view_set_model(Handle, model.Handle)
	End Method
	
	Method GetModel:Byte ptr()
		Return gtk_tree_view_get_model(Handle)
	End method

	Method AppendColumn(column:GtkTreeViewColumn)
		gtk_tree_view_append_column(Handle, column.Handle)
	End method
End Type

Type GtkCellRenderer Extends GObject
End Type

Type GtkCellRendererText Extends GtkCellRenderer
	Function Create:GtkCellRenderer()
		Local tempcell:GtkCellRendererText = New GtkCellRendererText
		tempcell.Handle = gtk_cell_renderer_text_new()
		Return tempcell
	End function
End Type

Type GtkCellRendererToggle Extends GtkCellRenderer
	Function Create:GtkCellRenderer()
		Local tempcell:GtkCellRendererToggle = New GtkCellRendererToggle
		tempcell.Handle = gtk_cell_renderer_toggle_new()
		Return tempcell
	End function
End Type

Type GtkTreeViewColumn Extends GObject
	Function Create:GtkTreeViewColumn()
		Local tempcolumn:GtkTreeViewColumn = New GtkTreeViewColumn
		tempcolumn.Handle = gtk_tree_view_column_new()
		Return tempcolumn
	End Function

	Method SetTitle(title:String)
		gtk_tree_view_column_set_title(Handle, title.ToCString())
	End Method
	
	Method PackStart(widget:GtkCellRenderer, expand:Byte=1)
		gtk_tree_view_column_pack_start(Handle, widget.Handle, expand)
	End Method
	
	Method PackEnd(widget:GtkCellRenderer, expand:Byte=1)
		gtk_tree_view_column_pack_end(Handle, widget.Handle, expand)
	End method
	
	Method SetAttribute(widget:GtkCellRenderer, key:String, val:Byte Ptr)
		gtk_tree_view_column_set_attributes(Handle, widget.Handle, key.ToCString(), val)
	End method
End Type

