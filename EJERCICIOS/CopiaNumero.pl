ventana:-new(Ventana,dialog('Copiar Dato')),
  new(TxtCaja1,text_item('Dato')),
  send(Ventana,append,TxtCaja1),
  new(TxtCaja2,text_item('Dato copia')),
  new(Boton,button('Copiar',message(@prolog,copiar,TxtCaja1,TxtCaja2))),
  send(Ventana,append,Boton),
  send(Ventana,append,TxtCaja2),
  send(Ventana,open).

  copiar(TxtCaja1,TxtCaja2):-get(TxtCaja1,value,Dato),
         send(TxtCaja2,value,Dato).
