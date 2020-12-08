//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	tbUSER->Insert();
	tbUSER->FieldByName(L"UserName")->AsString = L"LSJ";
	tbUSER->FieldByName(L"Password")->AsString = L"LSJ123";
	tbUSER->Post();


}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
	ADOQuery->SQL->Clear();
	ADOQuery->SQL->Add(L"Select * from DB.USER where UserName = 'LSJ'");
	//ADOQuery->SQL->Add(L"Select UserName from DB.USER");
	ADOQuery->Open();
	//ADOQuery->Active = true;
	UnicodeString tempStr = L"";


	tempStr = ADOQuery->FieldByName(L"Password")->AsString;
	ShowMessage(tempStr);


}
//---------------------------------------------------------------------------
