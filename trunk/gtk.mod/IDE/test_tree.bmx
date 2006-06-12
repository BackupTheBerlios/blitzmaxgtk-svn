Framework GTK.Binding
Import GTK.OOP

GTKUtil.Init()

Local twindow:GtkWindow = GtkWindow.Create()
twindow.Show()
twindow.SignalConnect("delete_event", close)

' START EXAMPLE

Const TITLE_COLUMN:Int = 0
Const AUTHOR_COLUMN:Int = 1
Const CHECKED_COLUMN:Int = 2
Const N_COLUMNS:Int = 3

Local store:Byte Ptr ' GtkTreeStore
Local tree:Byte Ptr ' GtkWidget
Local column:Byte Ptr ' GtkTreeViewColumn
Local renderer:Byte Ptr ' GtkCellRenderer

Local typearr:Int[N_COLUMNS]
typearr[0] = G_TYPE_STRING
typearr[1] = G_TYPE_STRING
typearr[2] = G_TYPE_BOOLEAN
store = gtk_tree_store_newv(N_COLUMNS, typearr)
Type GtkTreeIter
	Field stamp:Int
	Field user_data:Byte Ptr
	Field user_data2:Byte Ptr
	Field user_data3:Byte Ptr
End Type

Extern
	Function gtk_tree_store_append_i(store:Byte Ptr, iter:Byte ptr, parent:Byte Ptr)="gtk_tree_store_append"
	Function gtk_tree_store_set_value_i(store:Byte Ptr, iter:Byte Ptr, col:Int, val:Byte Ptr)="gtk_tree_store_set_value" 
	Function malloc:Byte Ptr(size:Int)
End Extern
Local iter:GtkTreeIter = New GtkTreeIter
Print iter.stamp
gtk_tree_store_append_i(store, iter, Null)
Print iter.stamp
Print String.fromcstring(iter.user_data)
Print String.fromcstring(iter.user_data2)
Print String.fromcstring(iter.user_data3)
gtk_tree_store_set_value_i(store, Varptr iter, TITLE_COLUMN, "Die Kunst des Shitfucks".ToCString())
Print iter.stamp
gtk_tree_store_set_value_i(store, Varptr iter, AUTHOR_COLUMN, "Master of the universe".ToCString())
gtk_tree_store_set_value_i(store, Varptr iter, CHECKED_COLUMN, Byte Ptr(1))
Extern
	Function gtk_tree_model_get_type:Byte Ptr()
	Function g_object_unref(obj:Byte Ptr)
	Function g_type_check_instance_cast_l:Byte Ptr(b:Byte Ptr, a:Long)="g_type_check_instance_cast"
	Function g_object_set(obj:Byte Ptr, name:Byte Ptr, val:Byte Ptr, dat:Byte Ptr)
	Function gtk_tree_view_column_new:Byte Ptr()
	Function gtk_tree_view_column_set_attributes(tree_column:Byte Ptr, cell_renderer:Byte Ptr, key:Byte Ptr, value:Byte Ptr, terminator:Byte Ptr)
	Function gtk_tree_view_get_type:Byte Ptr()
End extern
tree = gtk_tree_view_new_with_model(g_type_check_instance_cast(store,gtk_tree_model_get_type()))
g_object_unref(g_type_check_instance_cast_l(store,G_TYPE_OBJECT))

renderer = gtk_cell_renderer_text_new()
g_object_set(g_type_check_instance_cast_l(renderer, G_TYPE_OBJECT), "foreground".ToCString(), "red".ToCString(), Null)
column = gtk_tree_view_column_new()
gtk_tree_view_column_set_title(column, "Author".ToCString())
gtk_tree_view_column_pack_start(column, renderer, 1)
gtk_tree_view_column_set_attributes(column, renderer, "text".ToCString(), Byte Ptr(AUTHOR_COLUMN), Null);
gtk_tree_view_append_column(g_type_check_instance_cast(tree, gtk_tree_view_get_type()), column)

renderer = gtk_cell_renderer_text_new()
column = gtk_tree_view_column_new()
gtk_tree_view_column_set_title(column, "Title".ToCString())
gtk_tree_view_column_pack_start(column, renderer, 1)
gtk_tree_view_column_set_attributes(column, renderer, "text".ToCString(), Byte Ptr(TITLE_COLUMN), Null);
gtk_tree_view_append_column(g_type_check_instance_cast(tree, gtk_tree_view_get_type()), column)

renderer = gtk_cell_renderer_text_new()
column = gtk_tree_view_column_new()
gtk_tree_view_column_set_title(column, "Checked out".ToCString())
gtk_tree_view_column_pack_start(column, renderer, 1)
gtk_tree_view_column_set_attributes(column, renderer, "text".ToCString(), Byte Ptr(CHECKED_COLUMN), Null);
gtk_tree_view_append_column(g_type_check_instance_cast(tree, gtk_tree_view_get_type()), column)

Local treeview:GtkWidget = GtkWidget.CreateWidgetFromHandle(tree)
treeview.Show()
twindow.Add(treeview)
' End EXAMPLE

GTKUtil.Main()

Function close()
	End
End Function

