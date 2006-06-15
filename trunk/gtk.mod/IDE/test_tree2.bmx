Framework GTK.Binding
Import GTK.OOP
Import BRL.Random
Import BRL.linkedlist
Import brl.filesystem
Strict

Type MI
	Field Iter:GtkTreeIter
	Field Text:String
	Field Option:Byte
	
	Method SetString(Text:String="",Pos:Int=0)
		iter.setvalue(Pos,Text.ToCString())
	End Method 
	
	Method SetByte(B:Byte=False,Pos:Int=0)
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
			renderer.SetString("foreground", "black")
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
GTV.addColumn(0,"Hilfe")


Local UG:MI = GTV.NewItem()
UG.SetString("UserGuide")
ImportLinks(UG,"/home/bigmichi/Programme/BlitzMax/doc/bmxuser/navbar.html")

Local LG:MI = GTV.NewItem()
LG.SetString("Language")
ImportLinks(LG,"/home/bigmichi/Programme/BlitzMax/doc/bmxlang/navbar.html")

Local Mods:MI = GTV.NewItem()
Mods.SetString("Modules")
ImportLinks(Mods,"/home/bigmichi/Programme/BlitzMax/doc/bmxmods/navbar.html")

Local twindow:GtkWindow = GtkWindow.Create()
twindow.Show()
twindow.SignalConnect("delete_event", close)

GTV.tree.Show()
twindow.Add(GTV.tree)

GTKUtil.Main()

Function close()
	End
End Function



Function ImportLinks(root:MI,path$)
	Local	stream:TStream
	Local	c$,l$,p,q,a$,n$,cat
	Local	node:MI
	
	stream=ReadFile(path)
	If Not stream Return
	path=ExtractDir(path)
	node=root
	While Not Eof(stream)
		c=ReadLine(stream)
		If c="" Continue

		l=c.ToLower()
		l=l.Replace(Chr(34),"'")
		p=l.Find("<a")
		If p=-1 Continue
		a$=""
		q=l.find("href=",p)+1
		If q
			If l[q+4]=39	'"'"
				p=q+5
				q=l.find("'",p)
			Else
				p=q+4
				q=l.find(" ",p)
			EndIf
			If q>p 
				a$=path+"/"+c[p..q]
			EndIf
		EndIf
		p=c.Find(">",q)+1
		If p And c[p]=60 p=c.Find(">",p)+1
		q=c.Find("<",p)
		If q<=p Continue
		n$=c[p..q]
		'Print n$
		
		If l.find("onclick=toggle")<>-1
			node=GTV.NewItem(root)
			node.SetString(n$)
		Else
			GTV.NewItem(node).SetString(n$)
		EndIf
		
		
	Wend
	stream.Close
End Function

