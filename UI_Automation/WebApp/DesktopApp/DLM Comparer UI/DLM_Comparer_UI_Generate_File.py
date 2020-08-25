def DLM_Comparer_UI_Generate_File_():
    #Clicks at point (218, 87) of the 'Item' object.
    Aliases.DLMComparer_UI.Item.Click(218, 87)
    #Enters 'Test^a^c' in the 'Item' object.
    Aliases.DLMComparer_UI.Item.Keys("Test^a^c")
    #Clicks at point (190, 109) of the 'Item' object.
    Aliases.DLMComparer_UI.Item.Click(190, 109)
    #Enters '^v' in the 'Item' object.
    Aliases.DLMComparer_UI.Item.Keys("^v")
    #Clicks at point (199, 129) of the 'Item' object.
    Aliases.DLMComparer_UI.Item.Click(199, 129)
    #Enters '^v' in the 'Item' object.
    Aliases.DLMComparer_UI.Item.Keys("^v")
    #Clicks at point (926, 185) of the 'Item' object.
    Aliases.DLMComparer_UI.Item.Click(926, 185)
    #Enters '^v' in the 'Item' object.
    Aliases.DLMComparer_UI.Item.Keys("^v")
    OCR.Recognize(Aliases.DLMComparer_UI.Item).BlockByText("Cabinet").Click()
    #Clicks at point (500, 275) of the 'Item' object.
    Aliases.DLMComparer_UI.Item.Click(500, 275)
    OCR.Recognize(Aliases.DLMComparer_UI.Item).BlockByText("Origin", spNearestToCenter).Click()
    #Clicks at point (110, 18) of the 'Name' object.
    Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Name.Click(110, 18)
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    #Clicks at point (1453, 260) of the 'Item' object.
    Aliases.DLMComparer_UI.Item.Click(1453, 260)
    OCR.Recognize(Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Type).BlockByText("DLM").Click()
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    OCR.Recognize(Aliases.DLMComparer_UI.Item).BlockByText("Generate").Click()
    #Clicks at point (105, 14) of the 'Edit' object.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.Edit.Click(105, 14)
    #Enters the text 'Test Generate' in the 'ComboBox' text editor.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.SetText("Test Generate")
    #Clicks the 'btnSave' button.
    Aliases.DLMComparer_UI.dlgSaveAs.btnSave.ClickButton()
    #Clicks at point (79, 17) of the 'MSTaskListWClass' object.
    Aliases.explorer.wndShell_TrayWnd.ReBarWindow32.MSTaskSwWClass.MSTaskListWClass.Click(79, 17)
    #Activates the 'wndDownloads' window.
    Aliases.explorer.wndDownloads.Activate()
    #Clicks the '|Quick access|Downloads' item of the 'tvNamespaceTreeControl' tree.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink2.NamespaceTreeControl.tvNamespaceTreeControl.ClickItem("|Quick access|Downloads")
    #Double-clicks at point (113, 7) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Test_Generate_xlsx.Name.DblClick(113, 7)
    #Checks whether the 'Enabled' property of the Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Test_Generate_xlsx.Name object equals True.
    aqObject.CheckProperty(Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Test_Generate_xlsx.Name, "Enabled", cmpEqual, True)
    #Rotates the mouse wheel to 1 over the 'EXCEL7' object.
    Aliases.EXCEL.wndXLMAIN.XLDESK.EXCEL7.MouseWheel(1)
    OCR.Recognize(Aliases.EXCEL.wndXLMAIN.XLDESK.EXCEL7).BlockByText("Health", spTopMost).Click()
    #Checks whether the 'WndCaption' property of the Aliases.EXCEL.wndXLMAIN.XLDESK.EXCEL7 object equals 'Test Generate.xlsx'.
    aqObject.CheckProperty(Aliases.EXCEL.wndXLMAIN.XLDESK.EXCEL7, "WndCaption", cmpEqual, "Test Generate.xlsx", False)


def DLM_Case_Number_():
    #Clicks at point (393, 132) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(393, 132)
    #Enters '^v' in the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Keys("^v")
    #Clicks at point (916, 186) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(916, 186)
    #Enters '^[ReleaseLast]^v^a[BS]' in the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Keys("^[ReleaseLast]^v^a[BS]")
    #Clicks at point (1007, 54) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(1007, 54)
    #Enters the text 'Number' in the 'ComboBox' text editor.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.SetText("Number")
    #Clicks the 'btnSave' button.
    Aliases.DLMComparer_UI.dlgSaveAs.btnSave.ClickButton()
    #Activates the 'wndDownloads' window.
    Aliases.explorer.wndDownloads.Activate()
    #Double-clicks at point (45, 0) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Number_xlsx.Name.DblClick(45, 0)
    #Clicks the 'btnYes' button.
    Aliases.EXCEL.dlgMicrosoftExcel.btnYes.ClickButton()
    #Clicks at point (433, 219) of the 'wndbosa_sdm_XL93' object.
    Aliases.EXCEL.wndbosa_sdm_XL93.Click(433, 219)
    #Rotates the mouse wheel to 5 over the 'EXCEL7' object.
    Aliases.EXCEL.wndXLMAIN4.XLDESK.EXCEL7.MouseWheel(5)
    #Closes the 'wndXLMAIN4' window.
    Aliases.EXCEL.wndXLMAIN4.Close()
    #Clicks at point (129, 58) of the 'NetUIHWND' object.
    Aliases.EXCEL.wndNUIDialog.NetUIHWND.Click(129, 58)
    #Activates the 'Item2' window.
    Aliases.DLMComparer_UI.Item2.Activate()
    #Clicks at point (872, 181) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(872, 181)
    #Clicks at point (894, 180) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(894, 180, skCtrl)
    #Enters '^v' in the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Keys("^v")
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Cabinet").Click()
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Origin", spNearestToCenter).Click()
    OCR.Recognize(Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Name).BlockByText("TimedWiredDiscovery").Click()
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    #Clicks at point (1453, 273) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(1453, 273)
    #Clicks at point (114, 14) of the 'Date_modified' object.
    Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Date_modified.Click(114, 14)
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Generate").Click()
    #Clicks at point (190, 8) of the 'Edit' object.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.Edit.Click(190, 8)
    #Enters the text 'Number Case' in the 'ComboBox' text editor.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.SetText("Number Case")
    #Clicks the 'btnSave' button.
    Aliases.DLMComparer_UI.dlgSaveAs.btnSave.ClickButton()
    #Activates the 'wndDownloads' window.
    Aliases.explorer.wndDownloads.Activate()
    OCR.Recognize(Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Number_Case_xlsx.Name).BlockByText("Case").DblClick()
    #Clicks the 'btnYes' button.
    Aliases.EXCEL.dlgMicrosoftExcel.btnYes.ClickButton()
    #Clicks at point (440, 225) of the 'wndbosa_sdm_XL94' object.
    Aliases.EXCEL.wndbosa_sdm_XL94.Click(440, 225)
    #Rotates the mouse wheel to 5 over the 'EXCEL7' object.
    Aliases.EXCEL.wndXLMAIN5.XLDESK.EXCEL7.MouseWheel(5)
    #Clicks at point (419, 232) of the 'EXCEL7' object.
    Aliases.EXCEL.wndXLMAIN5.XLDESK.EXCEL7.Click(419, 232)
    OCR.Recognize(Aliases.EXCEL.wndXLMAIN5.XLDESK.EXCEL7).BlockByText("Number", spNearestToCenter).Click()
    #Checks whether the 'Enabled' property of the Aliases.EXCEL.wndXLMAIN5.XLDESK.EXCEL7 object equals True.
    aqObject.CheckProperty(Aliases.EXCEL.wndXLMAIN5.XLDESK.EXCEL7, "Enabled", cmpEqual, True)
    #Minimizes the 'wndXLMAIN5' window.
    Aliases.EXCEL.wndXLMAIN5.Minimize()



def DLM_Location():
    #Clicks at point (269, 103) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(269, 103)
    #Enters '^v' in the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Keys("^v")
    #Clicks at point (911, 189) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(911, 189)
    #Enters '^v' in the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Keys("^v")
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Cabinet", spNearestToCenter).Click()
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Generate").Click()
    #Enters the text 'Location' in the 'ComboBox' text editor.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.SetText("Location")
    #Clicks the 'btnSave' button.
    Aliases.DLMComparer_UI.dlgSaveAs.btnSave.ClickButton()
    #Clicks at point (549, 248) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(549, 248)
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Origin Add Origin").Click()
    #Clicks at point (39, 2) of the 'Date_modified' object.
    Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.Telegram_Desktop.Date_modified.Click(39, 2)
    OCR.Recognize(Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Date_modified).BlockByText("11/8/2019 7:00 PM").Click()
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Comparison Add Comparison").Click()
    #Clicks at point (3, 9) of the 'Type' object.
    Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Type.Click(3, 9)
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Generate").Click()
    #Enters the text 'Location' in the 'ComboBox' text editor.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.SetText("Location")
    #Clicks the 'btnSave' button.
    Aliases.DLMComparer_UI.dlgSaveAs.btnSave.ClickButton()
    #Activates the 'wndTest1_tcKDTest' window.
    Aliases.explorer.wndTest1_tcKDTest.Activate()
    #Clicks the '|Quick access|Downloads' item of the 'tvNamespaceTreeControl' tree.
    Aliases.explorer.wndTest1_tcKDTest.Test1_tcKDTest.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.NamespaceTreeControl.tvNamespaceTreeControl.ClickItem("|Quick access|Downloads")
    #Double-clicks at point (69, 13) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Location_xlsx.Name.DblClick(69, 13)
    #Clicks the 'btnYes' button.
    Aliases.EXCEL.dlgMicrosoftExcel.btnYes.ClickButton()
    #Clicks at point (438, 226) of the 'wndbosa_sdm_XL92' object.
    Aliases.EXCEL.wndbosa_sdm_XL92.Click(438, 226)
    #Clicks at point (381, 220) of the 'EXCEL7' object.
    Aliases.EXCEL.wndXLMAIN3.XLDESK.EXCEL7.Click(381, 220)
    #Checks whether the 'WndCaption' property of the Aliases.EXCEL.wndXLMAIN3.XLDESK.EXCEL7 object equals 'Location.xlsx [Repaired]'.
    aqObject.CheckProperty(Aliases.EXCEL.wndXLMAIN3.XLDESK.EXCEL7, "WndCaption", cmpEqual, "Location.xlsx [Repaired]")



def DLM_Name():
    #Clicks at point (204, 89) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(204, 89)
    #Enters '^v' in the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Keys("^v")
    #Clicks at point (210, 101) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(210, 101)
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Generate").Click()
    #Clicks the 'btnCancel' button.
    Aliases.DLMComparer_UI.dlgSaveAs.btnCancel.ClickButton()
    #Clicks at point (1035, 191) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(1035, 191)
    #Clicks at point (960, 186) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(960, 186)
    #Enters '^v' in the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Keys("^v")
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Add").Click()
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Origin", spNearestToCenter).Click()
    OCR.Recognize(Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Name).BlockByText("TimedWiredDiscovery").Click()
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    #Clicks at point (1453, 273) of the 'Item2' object.
    Aliases.DLMComparer_UI.Item2.Click(1453, 273)
    OCR.Recognize(Aliases.DLMComparer_UI.dlgOpen.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Last_week.TimedWiredDiscovery_14Feb2018_dlm.Date_modified).BlockByText("00").Click()
    #Clicks the 'btnOpen' button.
    Aliases.DLMComparer_UI.dlgOpen.btnOpen.ClickButton()
    OCR.Recognize(Aliases.DLMComparer_UI.Item2).BlockByText("Generate").Click()
    #Enters the text 'Name' in the 'ComboBox' text editor.
    Aliases.DLMComparer_UI.dlgSaveAs.DUIViewWndClassName.Explorer_Pane.FloatNotifySink.ComboBox.SetText("Name")
    #Clicks the 'btnSave' button.
    Aliases.DLMComparer_UI.dlgSaveAs.btnSave.ClickButton()
    #Activates the 'wndDownloads' window.
    Aliases.explorer.wndDownloads.Activate()
    #Clicks at point (55, 14) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Name_xlsx.Name.Click(55, 14)
    #Clicks at point (189, 4) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Name_info.Name.Click(189, 4)
    #Clicks at point (189, 4) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Name_info.Name.Click(189, 4)
    #Clicks at point (193, 7) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Name_info.Name.Click(193, 7)
    #Drags from point (240, 15) of the 'How_do_you_want_to_open_this_file_' object to offset (327, 14).
    Aliases.OpenWith.wndShell_Flyout.Flyout_window.ContentArea.Immersive_Openwith_Flyout.How_do_you_want_to_open_this_file_.Drag(240, 15, 327, 14)
    #Double-clicks at point (69, 14) of the 'Name' object.
    Aliases.explorer.wndDownloads.Downloads.DUIViewWndClassName.Explorer_Pane.CtrlNotifySink.ShellView.Items_View.Today.Name_xlsx.Name.DblClick(69, 14)
    #Clicks the 'btnYes' button.
    Aliases.EXCEL.dlgMicrosoftExcel.btnYes.ClickButton()
    OCR.Recognize(Aliases.EXCEL.wndbosa_sdm_XL9).BlockByText("Close").Click()
    OCR.Recognize(Aliases.EXCEL.wndXLMAIN2.XLDESK.EXCEL7).BlockByText("Project", spNearestToCenter).Click()
    #Checks whether the 'WndCaption' property of the Aliases.EXCEL.wndXLMAIN2.XLDESK.EXCEL7 object equals 'Name.xlsx [Repaired]'.
    aqObject.CheckProperty(Aliases.EXCEL.wndXLMAIN2.XLDESK.EXCEL7, "WndCaption", cmpEqual, "Name.xlsx [Repaired]")
    #Closes the 'wndXLMAIN2' window.
    Aliases.EXCEL.wndXLMAIN2.Close()
