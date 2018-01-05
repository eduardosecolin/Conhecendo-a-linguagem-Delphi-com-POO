unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Classe.Pessoa;

type

  { TForm1 }

  TForm1 = class(TForm)
    Mostrar: TButton;
    procedure MostrarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MostrarClick(Sender: TObject);
var pessoa1, pessoa2, pessoa3, pessoa4 : TPessoa;
begin
  pessoa1 := TPessoa.Create;
  pessoa2 := TPessoa.Create;
  pessoa3 := TPessoa.Create;
  pessoa4 := TPessoa.Create;
  try
    pessoa1.nome := 'Carlos Eduardo';
    pessoa1.dataNasc := '11/08/1984';

    pessoa2.nome := 'Roseli Sernaglia';
    pessoa2.dataNasc := '23/05/1983';

    pessoa3.nome := 'Eduardo Sernaglia';
    pessoa3.dataNasc := '26/12/2007';

    pessoa4.nome := 'Maria Eduarda';
    pessoa4.dataNasc := '19/05/2006';

    ShowMessage(pessoa1.nome + ' - ' + IntToStr(pessoa1.idade));
    ShowMessage(pessoa2.nome + ' - ' + IntToStr(pessoa2.idade));
    ShowMessage(pessoa3.nome + ' - ' + IntToStr(pessoa3.idade));
    ShowMessage(pessoa4.nome + ' - ' + IntToStr(pessoa4.idade));
  finally
  end;
end;

end.

