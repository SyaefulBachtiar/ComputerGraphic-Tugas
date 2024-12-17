unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ButtonBrowse: TButton;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button1Click(Sender: TObject);
    procedure ButtonBrowseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonBrowseClick(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Image2.Visible := false;
Image3.Visible := False;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image2.Visible := False;
Image3.Visible := False;
Edit1.Text := '';
end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Memo1.Clear;
Image2.Visible := true;
Memo1.Lines.Add ('Bahasa Indonesia : Bola Dunia');
Memo1.Lines.Add ('Bahasa Inggris : Globe');
Memo1.Lines.Add ('Bahasa Arab : Ardi');
Edit1.Text := 'Globe';
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Memo1.Clear;
Image3.Visible := True;
Memo1.Lines.Add ('Bahasa Indonesia : Tas');
Memo1.Lines.Add ('Bahasa Inggris : Bag');
Memo1.Lines.Add ('Bahasa Arab : xxxx');
Edit1.Text := 'Tas';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
Memo1.Lines.Add('Nama file gambar : ' + OpenPictureDialog1.FileName);
Memo1.Lines.Add('Gambar : ' + Edit1.Text);
end;

end.

