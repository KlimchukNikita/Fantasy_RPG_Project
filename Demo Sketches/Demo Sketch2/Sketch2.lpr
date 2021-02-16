program Sketch2;

uses crt;

var i: integer;

procedure  frame1();
begin
  writeln();
  writeln('   <")');
  writeln('   ( >\');
  writeln('    " \\');
  writeln('        \');
end;

procedure  frame2();
begin
  writeln();
  writeln('   >")');
  writeln('   ( >\');
  writeln('    " \\');
  writeln('        \');
end;

begin

  for i:=1 to 10000 do
  begin
    frame1();
    delay(500);
    clrscr;

    frame2();
    delay(500);
    clrscr;
  end;

  readln();

end.

