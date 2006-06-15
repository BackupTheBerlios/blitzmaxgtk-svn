Type GtkETreeIter
	Field Iter:GtkTreeIter
	Field Text:String
	Field Option:Byte
	
	Method SetString(Text:String="",Pos:Int=0)
		iter.setvalue(Pos,Text.ToCString())
	End Method 
	
	Method SetByte(B:Byte=False,Pos:Int=0)
		iter.SetValue(Pos,Varptr B)
	End Method
End Type

Type GtkETree
	Field Store:GtkTreeStore
	Field TypeArr:Int[]
	
	Field Tree:GtkTreeView
	
	Method addStoreColumn(CType:Int)
		TypeArr = TypeArr[..TypeArr.Length+1]
		TypeArr[TypeArr.Length-1] = CType
	End Method 
	
	Method Init()
		Tree = GtkTreeView.CreateWithModel(Store)
		Store = GtkTreeStore.Create(TypeArr)	
		Store.Unref()
	End method
			
	Method addViewColumn(Pos:Int,Title:String)
		Local column:GtkTreeViewColumn
		Local renderer:GtkCellRenderer
		renderer = GtkCellRendererText.Create()
		column = GtkTreeViewColumn.Create()
		column.SetTitle(Title)
		column.PackStart(renderer)

		column.SetAttribute(renderer, "text", Varptr Pos)
		tree.AppendColumn(column)
	End Method
	
	Method NewItem:GtkETreeIter(Parent:GtkETreeIter=Null)
		Local My:GtkETreeIter = New GtkETreeIter
		If Parent <> Null Then
			My.Iter = Store.Append(parent.Iter)
		Else
			My.Iter = Store.Append()
		End If
		Return My
	End Method
End Type

