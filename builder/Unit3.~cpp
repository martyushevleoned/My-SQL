//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Button1Click(TObject *Sender)
{
Form1->Show();
Form3->Hide();        
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Button2Click(TObject *Sender)
{
ADOQuery1->SQL->Clear();
if(Edit2->Text == "UserID")
{
ADOQuery1->SQL->Add("select * from " + Edit1->Text + " where " + Edit2->Text + "=" + Edit3->Text);
}else{
ADOQuery1->SQL->Add("select * from " + Edit1->Text + " where " + Edit2->Text + "='" + Edit3->Text + "'");
}
ADOQuery1->Active=false;
ADOQuery1->Active=true;
}
//---------------------------------------------------------------------------


