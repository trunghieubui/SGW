%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2010. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%

{application, wx,
 [{description, "Yet another graphics system"},
  {vsn, "1.6.1"},
  {modules,
   [
    %% Generated modules
  wxStaticBoxSizer, wxUpdateUIEvent, wxIcon, wxGraphicsMatrix, wxImage, wxGraphicsContext, wxComboBox, wxColourData, wxEvtHandler, wxFileDialog, wxFlexGridSizer, wxPrintDialogData, wxAuiNotebook, wxMouseCaptureChangedEvent, wxDCOverlay, wxPreviewFrame, wxChoicebook, wxSystemOptions, wxGridCellFloatRenderer, wxGridCellAttr, wxWindowDC, wxColourDialog, wxStatusBar, wxInitDialogEvent, wxEvent, wxXmlResource, wxToggleButton, wxTaskBarIconEvent, wxGraphicsObject, wxPrintout, wxSysColourChangedEvent, wxGridCellRenderer, wxListCtrl, wxLocale, wxBitmap, wxQueryNewPaletteEvent, wxSizerItem, wxFrame, wxNavigationKeyEvent, wxFontData, wxGraphicsRenderer, wxGridCellBoolRenderer, wxMouseCaptureLostEvent, wxTextEntryDialog, wxIdleEvent, wxGraphicsBrush, wxChoice, wxListItem, wxSpinCtrl, wxControlWithItems, wxMDIChildFrame, wxStdDialogButtonSizer, wxFontPickerEvent, wxPrintPreview, wxPrintData, wxDirPickerCtrl, wxKeyEvent, wxEraseEvent, wxRadioBox, wxCalendarDateAttr, wxGridCellEditor, wxPalette, wxGridCellNumberRenderer, wxLogNull, wxGridEvent, wxGridCellStringRenderer, wxPreviewCanvas, wxTextAttr, wxScrollWinEvent, wxSizeEvent, wxAuiDockArt, wxWindowDestroyEvent, wxSetCursorEvent, wxFontDialog, wxMenuItem, wxMirrorDC, wxControl, wxActivateEvent, wxStaticText, wxCalendarCtrl, wxIconizeEvent, wxJoystickEvent, wxGridBagSizer, wxGridSizer, wxScrollEvent, wx_misc, wxWindowCreateEvent, wxSashLayoutWindow, wxGridCellFloatEditor, wxPrintDialog, wxStaticBox, wxBufferedDC, wxTextCtrl, wxRadioButton, wxStaticBitmap, wxMaximizeEvent, wxDateEvent, wxBitmapButton, wxGauge, wxSizerFlags, wxGridCellTextEditor, wxShowEvent, wxBitmapDataObject, wxFindReplaceDialog, wxCalendarEvent, wxTextDataObject, wxGraphicsPath, wxStaticLine, wxMiniFrame, wxDisplayChangedEvent, wxListEvent, wxDialog, wxTopLevelWindow, wxPaintDC, wxTreeCtrl, wxScreenDC, wxPopupWindow, wxChildFocusEvent, wxColourPickerCtrl, wxFilePickerCtrl, wxFindReplaceData, wxPostScriptDC, wxGrid, wxAuiSimpleTabArt, wxSashEvent, wxScrolledWindow, wxMask, wxStyledTextCtrl, wxSplitterEvent, wxScrollBar, wxMenu, wxIconBundle, wxListItemAttr, wxAuiManager, wxFileDirPickerEvent, wxBoxSizer, wxClipboard, wxMouseEvent, wxStyledTextEvent, wxAuiPaneInfo, wxPaintEvent, wxSplitterWindow, wxProgressDialog, wxGridCellNumberEditor, wxCheckBox, wxListBox, wxNotebookEvent, wxColourPickerEvent, wxCursor, wxMessageDialog, wxButton, wxMenuBar, wxToolBar, wxGraphicsPen, wxPaletteChangedEvent, wxArtProvider, wxHtmlEasyPrinting, wxBufferedPaintDC, wxPasswordEntryDialog, wxClipboardTextEvent, wxListView, wxMoveEvent, wxAuiManagerEvent, wxContextMenuEvent, wxLayoutAlgorithm, wxCheckListBox, wxGridCellBoolEditor, wxMultiChoiceDialog, wxOverlay, wxHtmlWindow, wxPageSetupDialog, wxCommandEvent, wxPanel, wxDataObject, wxSashWindow, wxFocusEvent, wxGridCellChoiceEditor, wxListbook, wxImageList, wxMDIClientWindow, wxNotifyEvent, wxToolTip, wxSlider, wxSizer, wxGBSizerItem, wxPen, wxMenuEvent, wxBrush, wxPickerBase, wxAuiNotebookEvent, wxGLCanvas, wxAcceleratorEntry, wxPageSetupDialogData, wxSplashScreen, wxMemoryDC, wxToolbook, wxPopupTransientWindow, wxFileDataObject, wxFontPickerCtrl, wxGraphicsFont, wxCloseEvent, wxNotebook, wxDC, wxCaret, wxAcceleratorTable, wxMDIParentFrame, wxPreviewControlBar, wxHelpEvent, wxGenericDirCtrl, wxFont, wxDatePickerCtrl, wxSystemSettings, wxWindow, wxHtmlLinkEvent, wxTreeEvent, wxSpinEvent, wxSingleChoiceDialog, wxPrinter, wxTaskBarIcon, wxAuiTabArt, wxRegion, wxClientDC, wxSpinButton, wxTreebook, wxDirDialog, glu, gl,
    %% Handcrafted modules
    wx,
    wx_object,
    wxe_master,
    wxe_server,
    wxe_util
   ]},
  {registered, []},
  {applications, [stdlib, kernel]},
  {env, []},
  {runtime_dependencies, ["stdlib-2.0","kernel-3.0","erts-6.0"]}
 ]}.
