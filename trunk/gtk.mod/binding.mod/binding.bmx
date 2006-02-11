Module GTK.Binding
ModuleInfo "Name: GTK.Binding"
ModuleInfo "Description: GTK Binding"
ModuleInfo "License: GNU/GPL"
ModuleInfo "Version: 0.01"
ModuleInfo "Author: bigmichi and phiker"

'STARTCONFIG
Import "-pthread"
Import "-Wl,--export-dynamic"
Import "-lgthread-2.0"
Import "-lglade-2.0"
Import "-lgtk-x11-2.0"
Import "-lxml2"
Import "-lz"
Import "-lgdk-x11-2.0"
Import "-latk-1.0"
Import "-lgdk_pixbuf-2.0"
Import "-lm"
Import "-lpangocairo-1.0"
Import "-lfontconfig"
Import "-lXinerama"
Import "-lXi"
Import "-lXrandr"
Import "-lXext"
Import "-lXcursor"
Import "-lpango-1.0"
Import "-lcairo"
Import "-lXrender"
Import "-lgmodule-2.0"
Import "-lXfixes"
Import "-lX11"
Import "-ldl"
Import "-lgobject-2.0"
Import "-lglib-2.0"
'ENDCONFIG






Public



Include "glib_main.bmx"

Include "GTK/general.bmx"
Include "GTK/signals.bmx"
Include "GTK/GtkObject/GtkObject.bmx"
Include "GTK/GtkObject/GtkAdjustment/GtkAdjustment.bmx"
Include "GTK/GtkObject/GtkWidget/GtkWidget.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkContainer.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkBin.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkWindow.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkDialog.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkAboutDialog/GtkAboutDialog.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkColorSelectionDialog/GtkColorSelectionDialog.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkFileChooserDialog/GtkFileChooserDialog.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkFileSelection/GtkFileSelection.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkFontSelectionDialog/GtkFontSelectionDialog.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkInputDialog/GtkInputDialog.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkDialog/GtkMessageDialog/GtkMessageDialog.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkWindow/GtkPlug/GtkPlug.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkAlignment/GtkAlignment.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkFrame/GtkFrame.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkFrame/GtkAspectFrame/GtkAspectFrame.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkButton/GtkButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkButton/GtkToggleButton/GtkToggleButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkButton/GtkToggleButton/GtkCheckButton/GtkCheckButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkButton/GtkToggleButton/GtkCheckButton/GtkRadioButton/GtkRadioButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkButton/GtkColorButton/GtkColorButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkButton/GtkFontButton/GtkFontButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkButton/GtkOptionMenu/GtkOptionMenu.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkMenuItem/GtkMenuItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkMenuItem/GtkCheckMenuItem/GtkCheckMenuItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkMenuItem/GtkCheckMenuItem/GtkRadioMenuItem/GtkRadioMenuItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkMenuItem/GtkImageMenuItem/GtkImageMenuItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkMenuItem/GtkSeparatorMenuItem/GtkSeparatorMenuItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkMenuItem/GtkTearoffMenuItem/GtkTearoffMenuItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkListItem/GtkListItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkItem/GtkTreeItem/GtkTreeItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkComboBox/GtkComboBox.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkComboBox/GtkComboBoxEntry/GtkComboBoxEntry.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkEventBox/GtkEventBox.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkExpander/GtkExpander.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkHandleBox/GtkHandleBox.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkToolItem/GtkToolItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkToolItem/GtkToolButton/GtkToolButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkToolItem/GtkToolButton/GtkMenuToolButton/GtkMenuToolButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkToolItem/GtkToolButton/GtkToggleToolButton/GtkToggleToolButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkToolItem/GtkToolButton/GtkToggleToolButton/GtkRadioToolButton/GtkRadioToolButton.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkToolItem/GtkSeparatorToolItem/GtkSeparatorToolItem.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkScrolledWindow/GtkScrolledWindow.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBin/GtkViewport/GtkViewport.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkBox.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkButtonBox/GtkButtonBox.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkButtonBox/GtkHButtonBox/GtkHButtonBox.bmx"'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkButtonBox/GtkVButtonBox/GtkVButtonBox.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkVBox/GtkVBox.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkVBox/GtkColorSelection/GtkColorSelection.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkVBox/GtkFileChooserWidget/GtkFileChooserWidget.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkVBox/GtkFontSelection/GtkFontSelection.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkVBox/GtkGammaCurve/GtkGammaCurve.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkHBox/GtkHBox.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkHBox/GtkCombo/GtkCombo.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkHBox/GtkFileChooserButton/GtkFileChooserButton.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkBox/GtkHBox/GtkStatusbar/GtkStatusbar.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkCList/GtkCList.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkCList/GtkCTree/GtkCTree.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkFixed/GtkFixed.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkPaned/GtkPaned.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkPaned/GtkHPaned/GtkHPaned.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkPaned/GtkVPaned/GtkVPaned.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkIconView/GtkIconView.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkLayout/GtkLayout.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkList/GtkList.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkMenuShell/GtkMenuShell.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkMenuShell/GtkMenuBar/GtkMenuBar.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkMenuShell/GtkMenu/GtkMenu.bmx"
Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkNotebook/GtkNotebook.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkSocket/GtkSocket.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkTable/GtkTable.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkTextView/GtkTextView.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkToolbar/GtkToolbar.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkTree/GtkTree.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkContainer/GtkTreeView/GtkTreeView.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkMisc/GtkMisc.bmx"
Include "GTK/GtkObject/GtkWidget/GtkMisc/GtkLabel/GtkLabel.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkMisc/GtkLabel/GtkAccelLabel/GtkAccelLabel.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkMisc/GtkLabel/GtkTipsQuery/GtkTipsQuery.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkMisc/GtkArrow/GtkArrow.bmx"
Include "GTK/GtkObject/GtkWidget/GtkMisc/GtkImage/GtkImage.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkMisc/GtkPixmap/GtkPixmap.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkCalendar/GtkCalendar.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkCellView/GtkCellView.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkDrawingArea/GtkDrawingArea.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkDrawingArea/GtkCurve/GtkCurve.bmx"
Include "GTK/GtkObject/GtkWidget/GtkEntry/GtkEntry.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkEntry/GtkSpinButton/GtkSpinButton.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkRuler/GtkRuler.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkRuler/GtkHRuler/GtkHRuler.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkRuler/GtkVRuler/GtkVRuler.bmx"
Include "GTK/GtkObject/GtkWidget/GtkRange/GtkRange.bmx"
Include "GTK/GtkObject/GtkWidget/GtkRange/GtkScale/GtkScale.bmx"
Include "GTK/GtkObject/GtkWidget/GtkRange/GtkScale/GtkHScale/GtkHScale.bmx"
Include "GTK/GtkObject/GtkWidget/GtkRange/GtkScale/GtkVScale/GtkVScale.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkRange/GtkScrollbar/GtkScrollbar.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkRange/GtkScrollbar/GtkHScrollbar/GtkHScrollbar.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkRange/GtkScrollbar/GtkVScrollbar/GtkVScrollbar.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkSeparator/GtkSeparator.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkSeparator/GtkHSeparator/GtkHSeparator.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkSeparator/GtkVSeparator/GtkVSeparator.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkInvisible/GtkInvisible.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkOldEditable/GtkOldEditable.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkOldEditable/GtkText/GtkText.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkPreview/GtkPreview.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkProgress/GtkProgress.bmx"
'Include "GTK/GtkObject/GtkWidget/GtkProgress/GtkProgressBar/GtkProgressBar.bmx"
'Include "GTK/GtkObject/GtkAdjustment/GtkAdjustment.bmx"
'Include "GTK/GtkObject/GtkCellRenderer/GtkCellRenderer.bmx"
'Include "GTK/GtkObject/GtkCellRenderer/GtkCellRendererText/GtkCellRendererText.bmx"
'Include "GTK/GtkObject/GtkCellRenderer/GtkCellRendererText/GtkCellRendererCombo/GtkCellRendererCombo.bmx"
'Include "GTK/GtkObject/GtkCellRenderer/GtkCellRendererPixbuf/GtkCellRendererPixbuf.bmx"
'Include "GTK/GtkObject/GtkCellRenderer/GtkCellRendererProgress/GtkCellRendererProgress.bmx"
'Include "GTK/GtkObject/GtkCellRenderer/GtkCellRendererToggle/GtkCellRendererToggle.bmx"
'Include "GTK/GtkObject/GtkFileFilter/GtkFileFilter.bmx"
'Include "GTK/GtkObject/GtkItemFactory/GtkItemFactory.bmx"
'Include "GTK/GtkObject/GtkTooltips/GtkTooltips.bmx"
'Include "GTK/GtkObject/GtkTreeViewColumn/GtkTreeViewColumn.bmx"
'Include "GTK/GtkAccelGroup/GtkAccelGroup.bmx"
'Include "GTK/GtkAccelMap/GtkAccelMap.bmx"
'Include "GTK/GtkAccelMap/GtkAccessible/GtkAccessible.bmx"
'Include "GTK/GtkAction/GtkAction.bmx"
'Include "GTK/GtkAction/GtkToggleAction/GtkToggleAction.bmx"
'Include "GTK/GtkAction/GtkToggleAction/GtkRadioAction/GtkRadioAction.bmx"
'Include "GTK/GtkActionGroup/GtkActionGroup.bmx"
'Include "GTK/GtkClipboard/GtkClipboard.bmx"
'Include "GTK/GtkEntryCompletion/GtkEntryCompletion.bmx"
'Include "GTK/GtkIconFactory/GtkIconFactory.bmx"
'Include "GTK/GtkIconTheme/GtkIconTheme.bmx"
'Include "GTK/GtkIMContext/GtkIMContext.bmx"
'Include "GTK/GtkIMContext/GtkIMContextSimple/GtkIMContextSimple.bmx"
'Include "GTK/GtkIMContext/GtkIMMulticontext/GtkIMMulticontext.bmx"
'Include "GTK/GtkListStore/GtkListStore.bmx"
'Include "GTK/GtkRcStyle/GtkRcStyle.bmx"
'Include "GTK/GtkSettings/GtkSettings.bmx"
'Include "GTK/GtkSizeGroup/GtkSizeGroup.bmx"
'Include "GTK/GtkStyle/GtkStyle.bmx"
'Include "GTK/GtkTextBuffer/GtkTextBuffer.bmx"
'Include "GTK/GtkTextChildAnchor/GtkTextChildAnchor.bmx"
'Include "GTK/GtkTextMark/GtkTextMark.bmx"
'Include "GTK/GtkTextTag/GtkTextTag.bmx"
'Include "GTK/GtkTextTagTable/GtkTextTagTable.bmx"
'Include "GTK/GtkTreeModelFilter/GtkTreeModelFilter.bmx"
'Include "GTK/GtkTreeModelSort/GtkTreeModelSort.bmx"
'Include "GTK/GtkTreeSelection/GtkTreeSelection.bmx"
'Include "GTK/GtkTreeStore/GtkTreeStore.bmx"
'Include "GTK/GtkUIManager/GtkUIManager.bmx"
'Include "GTK/GtkWindowGroup/GtkWindowGroup.bmx"
'Include "GTK/GtkCellEditable/GtkCellEditable.bmx"
'Include "GTK/GtkCellLayout/GtkCellLayout.bmx"
'Include "GTK/GtkEditable/GtkEditable.bmx"
'Include "GTK/GtkFileChooser/GtkFileChooser.bmx"
'Include "GTK/GtkTreeModel/GtkTreeModel.bmx"
'Include "GTK/GtkTreeDragSource/GtkTreeDragSource.bmx"
'Include "GTK/GtkTreeDragDest/GtkTreeDragDest.bmx"
'Include "GTK/GtkTreeSortable/GtkTreeSortable.bmx"


Include "LibGlade/Initialisation.bmx"
Include "LibGlade/gladeXML.bmx"
Include "LibGlade/SAXParser.bmx"
Include "LibGlade/build.bmx"
