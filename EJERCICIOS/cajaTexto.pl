ventana:-new(Ventana,dialog('Creacion caja de texto')),
      new(CajaTexto,text_item('Caja')),
      send(Ventana,append,CajaTexto),
      send(Ventana,open).
