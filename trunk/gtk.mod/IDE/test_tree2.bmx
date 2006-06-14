Framework GTK.Binding
Import GTK.OOP
Import BRL.Random
Import BRL.linkedlist
Strict

Type MI
	Field Iter:GtkTreeIter
	Field Text:String
	Field Option:Byte
	
	Method SetString(Pos:Int,Text:String)
		iter.setvalue(Pos,Text.ToCString())
	End Method 
	
	Method SetByte(Pos:Int,B:Byte)
		iter.setvalue(Pos,Byte Ptr(B))
	End Method
	
End Type

Type MTV
		Field Store:GtkTreeStore
		Field TypeArr:Int[]
		
		Field Tree:GtkTreeView
		
		Field Nodes:TList = New TList
		
		Method addStore(CType:Int)
			TypeArr = TypeArr[..TypeArr.Length+1]
			TypeArr[TypeArr.Length-1] = CType
			Store = GtkTreeStore.Create(TypeArr)	
			GTV.Tree = GtkTreeView.CreateWithModel(GTV.Store)
			GTV.Store.Unref()
		End Method 
				
		Method addColumn(Pos:Int,Title:String)
			Local column:GtkTreeViewColumn
			Local renderer:GtkCellRenderer
			renderer = GtkCellRendererText.Create()
			renderer.SetString("foreground", "red")
			column = GtkTreeViewColumn.Create()
			column.SetTitle(Title)
			column.PackStart(renderer)

			column.SetAttribute(renderer, "text", Byte Ptr(Pos))
			tree.AppendColumn(column)
		End Method
		
		Method NewItem:MI(Parent:MI=Null)
			Local My:MI = New MI
			If Parent <> Null Then
				My.Iter = Store.Append(parent.Iter)
			Else
				My.Iter = Store.Append()
			End If
			Return My
		End Method
		
End Type


GTKUtil.Init()

Global GTV:MTV = New MTV
GTV.addStore(G_TYPE_STRING)
GTV.addStore(G_TYPE_STRING)
GTV.addStore(G_TYPE_BOOLEAN)
GTV.addColumn(0,"Spalte1")
GTV.addColumn(1,"Spalte2")
GTV.addColumn(2,"Spalte3")

Local My:MI = GTV.NewItem()
My.SetString(0,"Test")
My.SetString(1,"asdf")
My.SetByte(2,True)

Local My2:MI = GTV.NewItem(My)
My2.SetString(0,"Test")
My2.SetString(1,"asdf")
My2.SetByte(2,True)

Local twindow:GtkWindow = GtkWindow.Create()
twindow.Show()
twindow.SignalConnect("delete_event", close)

GTV.tree.Show()
twindow.Add(GTV.tree)

GTKUtil.Main()

Function close()
	End
End Function

