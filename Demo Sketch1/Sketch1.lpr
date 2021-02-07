program Sketch1;

uses crt;

const
  msg='Sketch1';

var
  i: integer;

begin
  for i:=1 to 10 do

    begin
      write(msg);
      delay(1000);
      write(#13,'':Length(msg),#13);
      delay(1000);
    end;

end.

