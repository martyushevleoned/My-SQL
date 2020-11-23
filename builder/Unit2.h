//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <DB.hpp>
#include <ADODB.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
        TButton *Button1;
        TADOConnection *ADOConnection1;
        TADOTable *DRequests;
        TDataSource *TBot;
        TDataSource *TRequests;
        TDBGrid *BotGrid;
        TDBGrid *RequestGrid;
        TDBNavigator *DBNavigator1;
        TDBNavigator *DBNavigator3;
        TADOTable *DBot;
        TDBGrid *UsernameGrid;
        TDBNavigator *DBNavigator2;
        TDataSource *TUsername;
        TADOTable *DName;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
