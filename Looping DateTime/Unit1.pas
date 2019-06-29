unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

    procedure GenerateSchedule(dateBegin, dateEnd, timeBegin, timeEnd: TDateTime; intDateInc, intMinInc: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.GenerateSchedule(dateBegin, dateEnd, timeBegin, timeEnd: TDateTime; intDateInc, intMinInc: Integer);
  var tLooping: TDateTime;
begin
  Memo1.Lines.Clear;

  while not (dateBegin = dateEnd) do
  begin
    tLooping := timeBegin;
    repeat
      begin
        tLooping := IncMinute(tLooping, intMinInc);
        memo1.Lines.Append(FormatDateTime('yyyy-mm-dd', dateBegin)+' '+FormatDateTime('hh:nn:ss', tLooping));
      end;
    until tLooping <= timeEnd;

    dateBegin := IncDay(dateBegin, intDateInc);
  end;

  memo1.Lines.Append(#13#10#13#10+'Total Lines: '+IntToStr(memo1.Lines.Count));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  GenerateSchedule(
    StrToDate('05/01/2019'),
    StrToDate('05/31/2019'),
    StrToDateTime('01/01/1899 08:00:00'),
    StrToDateTime('01/01/1899 16:00:00'),
    1,
    15
  );
end;

end.
