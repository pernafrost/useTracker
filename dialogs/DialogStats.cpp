/*----------------------------------------------------------------------------*/
/*    Copyright (C) 2015 Alexandre Campo                                      */
/*                                                                            */
/*    This file is part of USE Tracker.                                       */
/*                                                                            */
/*    USE Tracker is free software: you can redistribute it and/or modify     */
/*    it under the terms of the GNU General Public License as published by    */
/*    the Free Software Foundation, either version 3 of the License, or       */
/*    (at your option) any later version.                                     */
/*                                                                            */
/*    USE Tracker is distributed in the hope that it will be useful,          */
/*    but WITHOUT ANY WARRANTY; without even the implied warranty of          */
/*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           */
/*    GNU General Public License for more details.                            */
/*                                                                            */
/*    You should have received a copy of the GNU General Public License       */
/*    along with USE Tracker.  If not, see <http://www.gnu.org/licenses/>.    */
/*----------------------------------------------------------------------------*/

#include "DialogStats.h"

//(*InternalHeaders(DialogStats)
#include <wx/string.h>
#include <wx/intl.h>
//*)

//(*IdInit(DialogStats)
const long DialogStats::ID_STATICTEXT1 = wxNewId();
const long DialogStats::ID_SPINCTRL1 = wxNewId();
const long DialogStats::ID_BUTTON1 = wxNewId();
const long DialogStats::ID_CHECKBOX1 = wxNewId();
const long DialogStats::ID_CHECKBOX2 = wxNewId();
const long DialogStats::ID_FILEPICKERCTRL1 = wxNewId();
//*)

BEGIN_EVENT_TABLE(DialogStats,wxDialog)
	//(*EventTable(DialogStats)
	//*)
END_EVENT_TABLE()

DialogStats::DialogStats(wxWindow* parent,wxWindowID id,const wxPoint& pos,const wxSize& size)
{
	//(*Initialize(DialogStats)
	wxFlexGridSizer* FlexGridSizer1;
	wxFlexGridSizer* FlexGridSizer2;
	wxFlexGridSizer* FlexGridSizer3;
	wxFlexGridSizer* FlexGridSizer4;
	wxFlexGridSizer* FlexGridSizer5;
	wxStaticBoxSizer* StaticBoxSizer1;
	wxStaticBoxSizer* StaticBoxSizer2;
	wxStaticBoxSizer* StaticBoxSizer3;

	Create(parent, id, _("Dilation"), wxDefaultPosition, wxDefaultSize, wxDEFAULT_DIALOG_STYLE, _T("id"));
	SetClientSize(wxDefaultSize);
	Move(wxDefaultPosition);
	SetMinSize(wxSize(-1,-1));
	SetMaxSize(wxSize(-1,-1));
	SetFocus();
	FlexGridSizer3 = new wxFlexGridSizer(0, 1, 0, 0);
	StaticBoxSizer1 = new wxStaticBoxSizer(wxHORIZONTAL, this, _("Max size"));
	FlexGridSizer1 = new wxFlexGridSizer(0, 2, 0, 0);
	StaticText1 = new wxStaticText(this, ID_STATICTEXT1, _("Export blobs with size <= (pixels)"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT1"));
	FlexGridSizer1->Add(StaticText1, 1000, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	SpinCtrlDilationSize = new wxSpinCtrl(this, ID_SPINCTRL1, _T("1"), wxDefaultPosition, wxDefaultSize, 0, 1, 1000, 1, _T("ID_SPINCTRL1"));
	SpinCtrlDilationSize->SetValue(_T("1"));
	FlexGridSizer1->Add(SpinCtrlDilationSize, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	StaticBoxSizer1->Add(FlexGridSizer1, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	FlexGridSizer3->Add(StaticBoxSizer1, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	FlexGridSizer2 = new wxFlexGridSizer(0, 3, 0, 0);
	
	StaticBoxSizer2 = new wxStaticBoxSizer(wxHORIZONTAL, this, _("Save blobs as images"));
	FlexGridSizer4 = new wxFlexGridSizer(0, 2, 0, 0);
	FlexGridSizer4->AddGrowableCol(1);
	CheckBoxOutput = new wxCheckBox(this, ID_CHECKBOX1, wxEmptyString, wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_CHECKBOX1"));
	CheckBoxOutput->SetValue(false);
	FlexGridSizer4->Add(CheckBoxOutput, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	FilePickerCtrl1 = new wxFilePickerCtrl(this, ID_FILEPICKERCTRL1, wxEmptyString, _("Choose an output file"), _T("*.png"), wxDefaultPosition, wxDefaultSize, wxFLP_OVERWRITE_PROMPT|wxFLP_SAVE|wxFLP_USE_TEXTCTRL, wxDefaultValidator, _T("ID_FILEPICKERCTRL1"));
	FlexGridSizer4->Add(FilePickerCtrl1, 1, wxALL|wxEXPAND|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	StaticBoxSizer2->Add(FlexGridSizer4, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	FlexGridSizer3->Add(StaticBoxSizer2, 1, wxALL|wxEXPAND|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);

	StaticBoxSizer3 = new wxStaticBoxSizer(wxHORIZONTAL, this, _("Measures"));
	FlexGridSizer5 = new wxFlexGridSizer(0, 1, 0, 0);
	StaticBoxSizer3->Add(FlexGridSizer5, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	CheckBoxAngle = new wxCheckBox(this, ID_CHECKBOX2, "Export blob angle", wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_CHECKBOX1"));
	CheckBoxOutput->SetValue(false);

	FlexGridSizer5->Add(CheckBoxAngle, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);

	FlexGridSizer3->Add(StaticBoxSizer3, 1, wxALL|wxEXPAND|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);

	ButtonOk = new wxButton(this, ID_BUTTON1, _("OK"), wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON1"));
	ButtonOk->SetDefault();
	ButtonOk->SetFocus();
	FlexGridSizer2->Add(ButtonOk, 1, wxALL|wxALIGN_RIGHT|wxALIGN_CENTER_VERTICAL, 5);
	FlexGridSizer3->Add(FlexGridSizer2, 1, wxALL|wxALIGN_RIGHT|wxALIGN_CENTER_VERTICAL, 5);
	SetSizer(FlexGridSizer3);
	FlexGridSizer3->Fit(this);
	FlexGridSizer3->SetSizeHints(this);

	Connect(ID_SPINCTRL1,wxEVT_COMMAND_SPINCTRL_UPDATED,(wxObjectEventFunction)&DialogStats::SetMaximumExportSize);
	Connect(ID_CHECKBOX1,wxEVT_COMMAND_CHECKBOX_CLICKED,(wxObjectEventFunction)&DialogStats::OnCheckBoxOutputClick);
	Connect(ID_FILEPICKERCTRL1,wxEVT_COMMAND_FILEPICKER_CHANGED,(wxObjectEventFunction)&DialogStats::OnFilePickerCtrl1FileChanged);
	Connect(ID_BUTTON1,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&DialogStats::OnButtonOkClick);
	//*)

	Fit();
	Centre();
}

DialogStats::~DialogStats()
{
	//(*Destroy(DialogStats)
	//*)
}

void DialogStats::SetPlugin (std::vector<PipelinePlugin*> pfv)
{
    for (auto func : pfv)
	plugin.push_back(dynamic_cast<GetBlobStats*> (func));
     	SpinCtrlDilationSize->SetValue(plugin[0]->size);
	//FilePickerCtrl1->SetPath("");
    //CheckBoxOutput->SetValue(false);
}

void DialogStats::OnButtonCancelClick(wxCommandEvent& event)
{
    this->Hide();
}

void DialogStats::OnButtonApplyClick(wxCommandEvent& event)
{
}


void DialogStats::OnFilePickerCtrl1FileChanged(wxFileDirPickerEvent& event)
{
    wxFileName filename (FilePickerCtrl1->GetFileName());
    wxString path = filename.GetPath();

    if (filename.DirExists() || path.IsEmpty())
    {
	if (filename.GetFullPath() != plugin[0]->outputImageFile)
	{
	    for (auto f : plugin)
	    {
		f->outputImageFile = filename.GetFullPath();
	    }
	}
    }
}

void DialogStats::OnCheckBoxOutputClick(wxCommandEvent& event)
{
    for (auto f : plugin)
    {
	f->exportImages = CheckBoxOutput->IsChecked();
    }
}



void DialogStats::OnButtonOkClick(wxCommandEvent& event)
{
    this->Hide();
}

void DialogStats::SetMaximumExportSize(wxSpinEvent& event)
{
    for (auto f : plugin)
    	f->SetMaxSize(SpinCtrlDilationSize->GetValue());
}

