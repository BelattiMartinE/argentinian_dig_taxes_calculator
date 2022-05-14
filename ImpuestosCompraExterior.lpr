program ImpuestosCompraExterior; {$codepage utf-8}

var servicio, costoTotal, servicios_digitales, afip, impPais, valor_dolar,costo_conversion: REAL;
var confirmacion : char;

begin

  write('Ingrese el precio del producto por favor: ');
  readln(servicio);
  write('confirme si el producto esta en dolares escribiendo si: ');
  readln (confirmacion);
  if (confirmacion = 'si') or (confirmacion = 's') then
  begin
    write ('Cuánto es el valor del dolar?: ');
    readln(valor_dolar);
    costo_conversion := valor_dolar*servicio;
    servicio:=costo_conversion;
    writeln ('La conversion seria: ', servicio:1:2, ' pesos');
  end;
  //Dejo un comentario a ver que pasa
  servicios_digitales:=servicio*0.35;
  write('Impuesto a servicios digitales son: ', servicios_digitales:1:2, ' pesos');
  writeln();
  afip := servicio*0.21;
  write('impuesto de AFIP son: ', afip:1:2, ' pesos');
  writeln();
  impPais:= servicio*0.075;
  write('El impuesto al pais son: ', impPais :1:2, ' pesos');
  writeln();
  costoTotal:= servicio+servicios_digitales+afip+impPais;
  write ('La compra te va a doler: ', costoTotal :1:2, ' pesos', ' con un error de +- ', costoTotal*0.05 :1:2, ' pesos' );

  readln;

end.

