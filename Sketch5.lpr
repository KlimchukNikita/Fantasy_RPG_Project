program Sketch5;

var
  a: array[1..10, 1..10] of real;
  b: array[1..10] of real;
  x: array[1..10] of real;
  i, j, k, n: integer;
  r, g: real;
  FF: text;

begin
  writeln('Count of elements...');
  readln(n);

  writeln('Enter system coefficients and free terms');

  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write('a[', i, ',', j, ']= ');
      readln(a[i, j]);
    end;
  end;

  assign(FF, 'matrix1.txt');
  rewrite(FF);
    for i := 1 to n do
      begin
        for j := 1 to n do
          begin
            write(FF,a[i, j]:2);
          end;
      end;
  close(FF);

  assign(FF, 'matrix1.txt');
  reset(FF);
    for i := 1 to n do
      begin
        for j := 1 to n do
          begin
            read(FF,a[i, j]);
          end;
      end;
  close(FF);



  for i := 1 to n do
    begin
      write('b[',i,']:=');
      readln(b[i]);
    end;

  assign(FF, 'massiv1.txt');
  rewrite(FF);
    for i := 1 to n do
      begin
        write(FF,b[i]:2);
      end;
  close(FF);

  assign(FF, 'massiv1.txt');
  reset(FF);
    for i := 1 to n do
      begin
        read(FF,b[i]);
      end;
  close(FF);



  for k := 1 to n do
    begin
      for j := k + 1 to n do
        begin
          r := a[j, k] / a[k, k];
            for i := k to n do
              begin
                a[j, i] := a[j, i] - r * a[k, i];
              end;
          b[j] := b[j] - r * b[k];
        end;
    end;

  for k := n downto 1 do
    begin
      r := 0;
        for j := k + 1 to n do
          begin
            g := a[k, j] * x[j];
            r := r + g;
          end;
      x[k] := (b[k] - r) / a[k, k];
    end;



  for i := 1 to n do
    begin
      write('x[', i, ']=', x[i]:0:2, '   ');
      readln();
    end;

  assign(FF, 'massiv2.txt');
    rewrite(FF);
      for i := 1 to n do
        begin
          write(FF,x[i]:2);
        end;
    close(FF);
end.

