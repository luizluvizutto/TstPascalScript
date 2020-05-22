procedure ABC( txt: String );
begin
   ShowMessage('Estou no Script: ' + txt);
end;




var O: TClassEvento; 
begin
   O := TClassEvento.Create(NIL);
   try
   
      // ATRINUIÇÃO DO EVENTO
      // **

      // O.Evento := ABC;
      O.Evento := @ABC;

      // **
      
      O.Executar;
   finally
      O.Free;
   end;
end.
