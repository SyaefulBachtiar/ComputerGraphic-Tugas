unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    labelJenjang: TLabel;
    labelProdi: TLabel;
    labelNama: TLabel;
    labelNIM: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  labelNim.Caption := 'Nomor Induk Mahasiswa = ' + Edit1.Text;
  labelNama.Caption := 'Nama Mahasiswa = ' + Edit2.Text;
  labelProdi.Caption := 'Program Studi = ' + Edit3.Text;
  labelJenjang.Caption := 'Jenjang = ' + Edit4.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Edit1.Clear;
   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;

  labelNim.Caption :=  '';
  labelNama.Caption := '';
  labelProdi.Caption := '';
  labelJenjang.Caption := '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;
end;

end.

