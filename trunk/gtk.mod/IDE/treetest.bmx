superstrict
framework GTK.OOP
import brl.basic
local testtypes:int[2]
testtypes[0] = G_TYPE_INT
testtypes[1] = G_TYPE_CHAR
print G_TYPE_INT
'local teststore:GtkLIstStore = GtkListStore.Create(testtypes)
local testval:int
local testiter:GtkTreeIter
'g_value_init(byte ptr(testval),G_TYPE_INT)
testval = 5
'teststore.SetValue(testiter,0,byte ptr(testval))
