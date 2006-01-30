Type GtkAdjustment Extends GtkObject
	Function Create:GtkAdjustment(InitialValue:Double,Mini:Double,Maxi:Double,StepIncr:Double,PageIncr:Double,Size:Double)
		Local TempAdj:GtkAdjustment = New GtkAdjustment
		TempAdj.Handle = gtk_adjustment_new(InitialValue,Mini,Maxi,StepIncr,PageIncr,Size)
		Return TempAdj
	End Function

	Method SetValue(Value:Double)
		gtk_adjustment_set_value(Handle,Value)
	End Method

	Method GetValue:Double()
		Return gtk_adjustment_get_value(Handle)
	End Method
End Type