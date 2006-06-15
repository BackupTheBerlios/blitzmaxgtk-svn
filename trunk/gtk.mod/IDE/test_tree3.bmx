Framework GTK.Binding
Import GTK.OOP
Import BRL.Random
Import BRL.linkedlist
Import brl.filesystem
Strict

GTKUtil.Init()

Global GTV:GtkETree = New GtkETree
GTV.addStoreColumn(G_TYPE_STRING)
GTV.Init()
GTV.addViewColumn(0,"Hilfe")

Local UG:GtkETreeIter = GTV.NewItem()
UG.SetString("UserGuide")
ImportLinks(UG,"/zeug/bmx/doc/bmxuser/navbar.html")

Local LG:GtkETreeIter = GTV.NewItem()
LG.SetString("Language")
ImportLinks(LG,"/zeug/bmx/doc/bmxlang/navbar.html")

Local Mods:GtkETreeIter = GTV.NewItem()
Mods.SetString("Modules")
ImportLinks(Mods,"/zeug/bmx/doc/bmxmods/navbar.html")

Local twindow:GtkWindow = GtkWindow.Create()
twindow.Show()
twindow.SignalConnect("delete_event", close)

GTV.tree.Show()
twindow.Add(GTV.tree)

GTKUtil.Main()

Function close()
	End
End Function



Function ImportLinks(root:GtkETreeIter,path$)
	Local	stream:TStream
	Local	c$,l$,p,q,a$,n$,cat
	Local	node:GtkETreeIter
	
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

