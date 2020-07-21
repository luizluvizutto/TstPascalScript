procedure ABC( txt: String );
begin
   ShowMessage('Estou no Script: ' + txt);
end;

procedure Eventos;
var O: TClassEvento;
begin
   O := TClassEvento.Create(NIL);
   try
      O.Evento := @ABC;
      O.Executar;
      
      ShowMessage('Concluido'); 
      
   finally
      O.Free;
   end;
end;

procedure excecao;
var emsg: String;
begin
   try try
      RaiseException(erCustomError, 'Aqui vai dar erro no sistema.');
      ShowMessage('Concluido'); 
   except
      emsg := ExceptionToString(ExceptionType, ExceptionParam);
      ShowMessage(emsg);
   end;   
   finally
      ShowMessage('Liberado');
   end;
end;

procedure TesteTrunca;
var x: Double;
begin
   x := 19.99 * 100;
   x := Trunc( x );
   ShowMessage( FloatToStr( x ) );
end;

begin
   // Eventos;
   // excecao;
   TesteTrunca;
end.
