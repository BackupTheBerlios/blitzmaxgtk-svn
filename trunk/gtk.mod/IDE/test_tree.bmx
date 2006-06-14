Framework GTK.Binding
Import GTK.OOP
Import BRL.Random

strict

GTKUtil.Init()

Local twindow:GtkWindow = GtkWindow.Create()
twindow.Show()
twindow.SignalConnect("delete_event", close)

' START EXAMPLE

Const TITLE_COLUMN:Int = 0
Const AUTHOR_COLUMN:Int = 1
Const CHECKED_COLUMN:Int = 2
Const N_COLUMNS:Int = 3


Local store:GtkTreeStore
Local tree:GtkTreeView
Local column:GtkTreeViewColumn
Local renderer:GtkCellRenderer

Local typearr:Int[N_COLUMNS]
typearr[0] = G_TYPE_STRING
typearr[1] = G_TYPE_STRING
typearr[2] = G_TYPE_BOOLEAN
store = GtkTreeStore.Create(typearr)

Local iter:GtkTreeIter = store.Append()
iter.setvalue(TITLE_COLUMN,"Die Kunst des Shitfucks".ToCString())
iter.setvalue(AUTHOR_COLUMN,"Master of the universe".ToCString())
iter.setvalue(CHECKED_COLUMN,Byte Ptr(1))
SeedRnd MilliSecs()
Local iter2:GtkTreeIter
For Local i:Int = 0 To 5
	iter2 = store.Append(iter)
	iter2.setvalue(TITLE_COLUMN, ("Band " + (i+1)).ToCString())
	iter2.setvalue(CHECKED_COLUMN,Byte Ptr(Int(Rand(0,1))))
Next
iter = store.Append(iter2)
iter.setvalue(TITLE_COLUMN,"Epilog".ToCString())
iter.setvalue(AUTHOR_COLUMN,"asdasdasdasd".ToCString())
iter.setvalue(CHECKED_COLUMN,Byte Ptr(Int(Rand(0,1))))
iter = store.Append(iter2)
iter.setvalue(TITLE_COLUMN,"Greetings".TOCString())
iter.setvalue(CHECKED_COLUMN,Byte Ptr(Int(Rand(0,1))))

tree = GtkTreeView.CreateWithModel(store)
store.Unref()

renderer = GtkCellRendererText.Create()
renderer.SetString("foreground", "red")
column = GtkTreeViewColumn.Create()
column.SetTitle("Title")
column.PackStart(renderer)
column.SetAttribute(renderer, "text", Byte Ptr(TITLE_COLUMN))
tree.AppendColumn(column)

renderer = GtkCellRendererText.Create()
column = GtkTreeViewColumn.Create()
column.SetTitle("Author")
column.PackStart(renderer)
column.SetAttribute(renderer, "text", Byte Ptr(AUTHOR_COLUMN))
tree.AppendColumn(column)

renderer = GtkCellRendererToggle.Create()
column = GtkTreeViewColumn.Create()
column.SetTitle("Checked out")
column.PackStart(renderer)
column.SetAttribute(renderer, "active", Byte Ptr(CHECKED_COLUMN))
tree.AppendColumn(column)
tree.Show()

twindow.Add(tree)
' End EXAMPLE

GTKUtil.Main()

Function close()
	End
End Function

