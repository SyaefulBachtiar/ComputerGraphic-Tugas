unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ActnList,
  Spin, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Total: TEdit;
    HDaging: TEdit;
    HAyam: TEdit;
    HIkan: TEdit;
    HTahu: TEdit;
    HTempe: TEdit;
    Minuman: TEdit;
    HNasi: TEdit;
    Tlabel2: TLabel;
    Tempe: TCheckBox;
    Ikan: TCheckBox;
    Tahu: TCheckBox;
    Daging: TCheckBox;
    Ayam: TCheckBox;
    Tlabel1: TLabel;
    Minum: TComboBox;
    GroupBox1: TGroupBox;
    Nasi: TGroupBox;
    Putih: TRadioButton;
    Tlabel3: TLabel;
    Uduk: TRadioButton;
    Kuning: TRadioButton;
    Liwet: TRadioButton;
    Goreng: TRadioButton;
    procedure AyamChange(Sender: TObject);
    procedure DagingChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GorengChange(Sender: TObject);
    procedure HAyamChange(Sender: TObject);
    procedure IkanChange(Sender: TObject);
    procedure KuningChange(Sender: TObject);
    procedure LiwetChange(Sender: TObject);
    procedure MinumanChange(Sender: TObject);
    procedure MinumChange(Sender: TObject);
    procedure PutihChange(Sender: TObject);
    procedure TahuChange(Sender: TObject);
    procedure TempeChange(Sender: TObject);
    procedure UdukChange(Sender: TObject);
    procedure HitungTotal; // Tambahkan prosedur HitungTotal
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

// Prosedur untuk menghitung total harga
procedure TForm1.HitungTotal;
var
  totalHarga: Integer;
begin
  totalHarga := 0;

  // Tambahkan harga nasi
  if HNasi.Text <> '' then
    totalHarga := totalHarga + StrToInt(HNasi.Text);

  // Tambahkan harga minuman
  if Minuman.Text <> '' then
    totalHarga := totalHarga + StrToInt(Minuman.Text);

  // Tambahkan harga makanan berdasarkan pilihan checkbox
  if Ayam.Checked and (HAyam.Text <> '') then
    totalHarga := totalHarga + StrToInt(HAyam.Text);
  if Daging.Checked and (HDaging.Text <> '') then
    totalHarga := totalHarga + StrToInt(HDaging.Text);
  if Ikan.Checked and (HIkan.Text <> '') then
    totalHarga := totalHarga + StrToInt(HIkan.Text);
  if Tahu.Checked and (HTahu.Text <> '') then
    totalHarga := totalHarga + StrToInt(HTahu.Text);
  if Tempe.Checked and (HTempe.Text <> '') then
    totalHarga := totalHarga + StrToInt(HTempe.Text);

  // Tampilkan total harga
  Total.Text := IntToStr(totalHarga);
end;

procedure TForm1.UdukChange(Sender: TObject);
begin
  if Uduk.Checked then
    HNasi.Text := '7000';
  HitungTotal;
end;

procedure TForm1.GorengChange(Sender: TObject);
begin
  if Goreng.Checked then
    HNasi.Text := '10000';
  HitungTotal;
end;

procedure TForm1.HAyamChange(Sender: TObject);
begin

end;

procedure TForm1.IkanChange(Sender: TObject);
begin
  if Ikan.Checked = True then
    HIkan.Text := '12000';

    HitungTotal;
end;

procedure TForm1.KuningChange(Sender: TObject);
begin
  if Kuning.Checked then
    HNasi.Text := '6000';
  HitungTotal;
end;

procedure TForm1.LiwetChange(Sender: TObject);
begin
  if Liwet.Checked then
    HNasi.Text := '8000';
  HitungTotal;
end;

procedure TForm1.MinumanChange(Sender: TObject);
begin

end;

procedure TForm1.MinumChange(Sender: TObject);
begin
   Minuman.Text := Minum.Text;

     case Minum.ItemIndex of
        0: Minuman.Text := '2000'; // Harga untuk Air Mineral
        1: Minuman.Text := '3000'; // Harga untuk Teh Manis
        2: Minuman.Text := '4000'; // Harga untuk Kopi
    else
        Minuman.Text := '0'; // Jika tidak ada item yang dipilih
    end;

  HitungTotal;
end;

procedure TForm1.PutihChange(Sender: TObject);
begin
  if Putih.Checked then
    HNasi.Text := '5000';
  HitungTotal;
end;

procedure TForm1.TahuChange(Sender: TObject);
begin
  if Tahu.Checked = True then
    HTahu.Text := '2000';

    HitungTotal;
end;

procedure TForm1.TempeChange(Sender: TObject);
begin
  if Tempe.Checked = True then
    HTempe.Text := '2000';

    HitungTotal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Minum.Items.Add('Air Mineral');
     Minum.Items.Add('Teh Manis');
     Minum.Items.Add('Kopi');

  Total.Text := '0';
end;

procedure TForm1.DagingChange(Sender: TObject);
begin
    if Daging.Checked = True then
    HDaging.Text := '10000';

    HitungTotal;
end;

procedure TForm1.AyamChange(Sender: TObject);
begin
  if Ayam.Checked = True then
    HAyam.Text := '9000';

    HitungTotal;
end;

end.

