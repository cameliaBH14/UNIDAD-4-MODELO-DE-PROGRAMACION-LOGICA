menu:-new(Ventanita, dialog('Edad')),
new(Opba, label(opba, 'Calcular edad ')),
new(Edad, button('Edad', message(@prolog, vedad))),
send(Ventanita,append,Opba),
send(Ventanita,append,Edad),
send(Ventanita,open).
vedad:-new(Vedad, dialog('EDAD')),
new(Etiedad,label(etiqueta,'CALCULAR LA EDAD')),
new(Caja1, text_item('Año actual')),
new(Caja2, text_item('Año de nacimiento')),
new(Caja3, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,edad,Caja1,Caja2,Caja3))),
send(Vedad, append, Etiedad),
send(Vedad, append, Caja1),
send(Vedad, append, Caja2),
send(Vedad, append, Boton),
send(Vedad, append, Caja3),
send(Vedad, open).

edad(Caja1,Caja2,Caja3):-get(Caja1,value,Valor1),
                get(Caja2,value,Valor2),
                send(Caja3,value,Valor1-Valor2).
