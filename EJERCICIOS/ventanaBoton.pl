ventana:-new(Ventana,dialog('Creacion de un boton')),
  new(Boton,button('Cerrar',message(@prolog,cerrarVentana,Ventana))),
  send(Ventana,append,Boton),
  send(Ventana,open).
  
cerrarVentana(Ventana):-send(Ventana,destroy).
