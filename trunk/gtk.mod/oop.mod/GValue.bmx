type GValue extends GObject
	function create:GValue()
		local tempvalue:Gvalue = new gvalue
		tempvalue.handle = create_gvalue()
		return tempvalue
	end function

	method Init(variable:byte ptr,GType:Int)
		g_value_init(variable,GType)
	end method
end type
