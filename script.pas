procedure ABC( txt: String );
begin
   ShowMessage('Estou no Script: ' + txt);
end;

var O: TClassEvento; 
begin
   O := TClassEvento.Create(NIL);
   try
      O.Evento := ABC;
      O.Executar;
   finally
      O.Free;
   end;
end.
