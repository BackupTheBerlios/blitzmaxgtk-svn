Type TProcShape Abstract
	Function Create(TopWidget:GtkWidget) Abstract
	Function CreateProcess:Int(Path:String,ArgV:String[]) Abstract
	Function ProcessRunning(pid:Int) Abstract
End Type
