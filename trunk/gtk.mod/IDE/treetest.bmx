superstrict
framework GTK.OOP

import brl.basic
GtkUtil.Init()
local testtypes:long[2]
testtypes[0] = G_TYPE_INT
testtypes[1] = G_TYPE_CHAR
print G_TYPE_INT
local teststore:GtkLIstStore = GtkListStore.Create(testtypes)
'local testval:int
local testiter:GtkTreeIter
testiter = teststore.Insert(1)
rem
print testiter.stamp
print int(testiter.user_data)
print int(testiter.user_data2)
print int(testiter.user_data3)
end rem
extern
	function g_value_get_type:int()
end extern
local blubvalue:GValue = GValue.Create()
g_value_init(blubvalue.Handle,G_TYPE_INT)
'g_type_check_instance_cast(byte ptr(testval),byte ptr(g_value_get_type()))
'g_value_init(byte ptr(testval),G_TYPE_INT)
teststore.SetValue(testiter,0,blubvalue.handle)
