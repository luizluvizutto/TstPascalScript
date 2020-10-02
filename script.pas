procedure ABC( txt: String );
begin
   ShowMessage('Estou no Script: ' + txt);
end;

function ABC2( txt: TStringList ): Integer;
begin
   Result := 22;
end;


procedure Eventos;
var O: TClassEvento;
begin
   O := TClassEvento.Create(NIL);
   try
      O.Evento := @ABC;
      O.Evento2 := @ABC2;
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
var x: Integer;
    res, aux: Integer;
    
begin
   x := 5034;
   if x <= 10 then begin
      res := 10;
   end else begin
      aux := x mod 10;
      if aux <> 0 then begin
         res := x + ( 10-aux );
      end else begin
         res := x;
      end;
   end; 
   
   
   ShowMessage( IntToStr( res ) );
   
end;

begin
   // TesteTrunca; 
   Eventos;
   // excecao;
end.
