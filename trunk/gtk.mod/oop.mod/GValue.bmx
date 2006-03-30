type GValue
	function Init(variable:byte ptr,GType:Int)
		g_value_init(variable,GType)
	end function
end type
