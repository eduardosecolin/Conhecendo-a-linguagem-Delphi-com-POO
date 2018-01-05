unit Classe.Pessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TPessoa = class
    private

    public
      nome     : String;
      dataNasc : String;
      sexo     : String;
      etnia    : String;
      function idade : Integer;

  end;

implementation
{ TPessoa }

function TPessoa.idade : Integer
begin
  result := Trunc((now - StrToDate(dataNasc)) / 365.25);
end;

end.

