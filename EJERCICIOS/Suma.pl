menu:-new(Ventana,dialog('Suma')),
  new(Opba, label(opba, 'Sumas')),
  new(Sumar,button('Sumar',message(@prolog,vsumar))),
  send(Ventana,append,Opba),
  send(Ventana,append,Sumar),
  send(Ventana,open).
  vsumar:-new(Vsumar, dialog('SUMA DE DOS NÙMEROS')),
  new(Etisuma, label(etiqueta, 'SUMAREMOS DOS NÙMEROS')),
  new(Caja1,text_item('Numero 1')),
  new(Caja2,text_item('Numero 2')),
  new(Caja3,text_item('Resultado')),
  new(Boton,button('Sumar',message(@prolog,sumar,Caja1,Caja2,Caja3))),
  send(Vsumar,append, Etisuma),
  send(Vsumar,append, Caja1),
  send(Vsumar,append, Caja2),
  send(Vsumar,append,Boton),
  send(Vsumar,append,Caja3),
  send(Vsumar,open).
  

  sumar(Caja1,Caja2,Caja3):-get(Caja1,value,Valor1),
          get(Caja2,value,Valor2),
         send(Caja3,value,Valor1+Valor2).
