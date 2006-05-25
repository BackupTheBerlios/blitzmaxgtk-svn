type GtkTreeIter
<<<<<<< .mine
	field stamp:short
	field user_data:byte ptr, user_data2:byte ptr, user_data3:byte ptr
=======
	method new()
		stamp = 0
		user_data2 = null
		user_data3 = null
		user_data4 = null
	end method
	field stamp:int, user_data2:byte ptr, user_data3:byte ptr, user_data4:byte ptr
>>>>>>> .r174
end type

const GTK_TREE_MODEL_ITERS_PERSIST:byte = 1
const GTK_TREE_MODEL_LIST_ONLY:byte = 2

type GtkTreePath extends GObject
	function create:GtkTreePath()
		local temppath:GtkTreePath = New GtkTreePath
		temppath.Handle = gtk_tree_path_new()
		return temppath
	end function

	function CreateFromString:GtkTreePath(path:string)
		local temppath:GtkTreePath = new GtkTreePath
		temppath.Handle = gtk_tree_path_new_from_string(path.ToCString())
		return temppath
	end function
end type

