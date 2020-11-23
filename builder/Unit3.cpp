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
try{
        ADOQuery1->SQL->Clear();
        if (Custom->Checked == True){
                ADOQuery1->SQL->Add(Edit2->Text);
        }else{
                if (Edit2->Text == "UserID"){
                        ADOQuery1->SQL->Add("select * from " + Edit1->Text + " where " + Edit2->Text + "=" + Edit3->Text);
                }else{
                        ADOQuery1->SQL->Add("select * from " + Edit1->Text + " where " + Edit2->Text + "='" + Edit3->Text + "'");
                }
        }
        ADOQuery1->Active=false;
        ADOQuery1->Active=true;
        DBGrid1->Columns->Items[0]->Width = 100;
        DBGrid1->Columns->Items[1]->Width = 100;
}catch(...){
ShowMessage("не убей, не укради, не ломай");
}
}
//---------------------------------------------------------------------------

void __fastcall TForm3::CustomClick(TObject *Sender)
{
if (Custom->Checked == True){
Edit1->Visible = false;
Edit3->Visible = false;
Label1->Visible = false;
Label3->Visible = false;

Label2->Caption = "Query";
Edit2->Text = "select * from Requests";
}else{
Edit1->Visible = true;
Edit3->Visible = true;
Label1->Visible = true;
Label3->Visible = true;

Label2->Caption = "Col";
Edit2->Text = "Message";
}
}
//---------------------------------------------------------------------------

