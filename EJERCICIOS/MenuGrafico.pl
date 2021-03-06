menu:-new(Ventanita, dialog('Menu Grafico')),
new(Opba, label(opba, 'Operaciones basicas')),
send(Ventanita,append,Opba),
new(Sumar, button('Sumar',message(@prolog, vsumar))),
send(Ventanita,append,Sumar),
new(Restar, button('Restar',message(@prolog, vrestar))),
send(Ventanita,append,Restar),
new(Multiplicar, button('Multiplicar',message(@prolog, vmulti))),
send(Ventanita,append,Multiplicar),
new(Dividir, button('Dividir',message(@prolog, vdiv))),
send(Ventanita,append,Dividir),

new(AreFig,label(areafig,'Area de figuras')),
send(Ventanita,append,AreFig),
send(Ventanita,append,Opba),
new(Cuadrado, button('Cuadrado',message(@prolog, vcuadrado))),
send(Ventanita,append,Cuadrado),
new(Rectangulo, button('Rectangulo',message(@prolog, vrectangulo))),
send(Ventanita,append,Rectangulo),
new(Triangulo, button('Triangulo',message(@prolog, vtriangulo))),
send(Ventanita,append,Triangulo),
new(Circulo, button('Circulo',message(@prolog, vcirculo))),
send(Ventanita,append,Circulo),
new(Boton,button('Salir',message(@prolog,cerrarVentana,Ventanita))),
  send(Ventanita,append,Boton),
  send(Ventanita,open).
  cerrarVentana(Ventanita):-send(Ventanita,destroy).

vsumar:-new(Vsumar, dialog('SUMA DE DOS NUMEROS')),
new(Etisuma,label(etiqueta,'SUMAREMOS DOS NUMEROS')),
new(Caja1, text_item('Numero 1:')),
new(Caja2, text_item('Numero 2:')),
new(Caja3, text_item('Resultado')),
new(Boton, button('Sumar',message(@prolog,sumar,Caja1,Caja2,Caja3))),
send(Vsumar, append, Etisuma),
send(Vsumar, append, Caja1),
send(Vsumar, append, Caja2),
send(Vsumar, append, Boton),
send(Vsumar, append, Caja3),
send(Vsumar, open).
sumar(Caja1,Caja2,Caja3):-get(Caja1,value,Valor1),
  get(Caja2,value,Valor2),
  send(Caja3,value,Valor1+Valor2).

vrestar:-new(Vrestar, dialog('RESTA DE DOS NUMEROS')),
new(Etirestar,label(etiqueta,'RESTA DOS NUMEROS')),
new(CajaRes, text_item('Ingresa el primer numero')),
new(CajaRes2, text_item('Ingresa el segundo numero')),
new(CajaRes3, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,restar,CajaRes,CajaRes2,CajaRes3))),
send(Vrestar, append, Etirestar),
send(Vrestar, append, CajaRes),
send(Vrestar, append, CajaRes2),
send(Vrestar, append, Boton),
send(Vrestar, append, CajaRes3),
send(Vrestar, open).
restar(CajaRes,CajaRes2,CajaRes3):-get(CajaRes,value,Valor1),
                get(CajaRes2,value,Valor2),
                send(CajaRes3,value,Valor1-Valor2).

vmulti:-new(Vmulti, dialog('MULTIPLICACION')),
new(Etimulti,label(etiqueta,'MULTIPLICACION DE DOS NUMEROS')),
new(Cajamulti, text_item('Ingresa el primer numero')),
new(Cajamulti2, text_item('Ingresa el segundo numero')),
new(Cajamulti3, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,multiplicar,Cajamulti,Cajamulti2,Cajamulti3))),
send(Vmulti, append, Etimulti),
send(Vmulti, append, Cajamulti),
send(Vmulti, append, Cajamulti2),
send(Vmulti, append, Boton),
send(Vmulti, append, Cajamulti3),
send(Vmulti, open).
multiplicar(Cajamulti,Cajamulti2,Cajamulti3):-get(Cajamulti,value,Valor1),
                get(Cajamulti2,value,Valor2),
                send(Cajamulti3,value,Valor1*Valor2).

vcuadrado:-new(Vcuadrado, dialog('CUADRADO')),
new(Eticuadrado,label(etiqueta,'AREA DEL CUADRADO')),
new(Cajacua, text_item('Ingresa el primer lado')),
new(Cajacua2, text_item('Ingresa el segundo lado')),
new(Cajacua3, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,cuadrado,Cajacua,Cajacua2,Cajacua3))),
send(Vcuadrado, append, Eticuadrado),
send(Vcuadrado, append, Cajacua),
send(Vcuadrado, append, Cajacua2),
send(Vcuadrado, append, Boton),
send(Vcuadrado, append, Cajacua3),
send(Vcuadrado, open).
cuadrado(Cajacua,Cajacua2,Cajacua3):-get(Cajacua,value,Valor1),
                get(Cajacua2,value,Valor2),
                send(Cajacua3,value,Valor1*Valor2).

vrectangulo:-new(Vrectangulo, dialog('RECTANGULO')),
new(Etirectangulo,label(etiqueta,'AREA DEL RECTANGULO')),
new(Cajarec, text_item('Ingresa el primer lado')),
new(Cajarec2, text_item('Ingresa el segundo lado')),
new(Cajarec3, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,rectangulo,Cajarec,Cajarec2,Cajarec3))),
send(Vrectangulo, append, Etirectangulo),
send(Vrectangulo, append, Cajarec),
send(Vrectangulo, append, Cajarec2),
send(Vrectangulo, append, Boton),
send(Vrectangulo, append, Cajarec3),
send(Vrectangulo, open).
rectangulo(Cajarec,Cajarec2,Cajarec3):-get(Cajarec,value,Valor1),
                get(Cajarec2,value,Valor2),
                send(Cajarec3,value,Valor1*Valor2).

vtriangulo:-new(Vtriangulo, dialog('TRIANGULO')),
new(Etitriangulo,label(etiqueta,'AREA DEL TRIANGULO')),
new(Cajatri, text_item('Ingresa la base')),
new(Cajatri2, text_item('Ingresa la altura')),
new(Cajatri3, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,triangulo,Cajatri,Cajatri2,Cajatri3))),
send(Vtriangulo, append, Etitriangulo),
send(Vtriangulo, append, Cajatri),
send(Vtriangulo, append, Cajatri2),
send(Vtriangulo, append, Boton),
send(Vtriangulo, append, Cajatri3),
send(Vtriangulo, open).
triangulo(Cajatri,Cajatri2,Cajatri3):-get(Cajatri,value,Valor1),
                get(Cajatri2,value,Valor2),
                send(Cajatri3,value,Valor1*Valor2/2).

vcirculo:-new(Vcirculo, dialog('CIRCULO')),
new(Eticirculo,label(etiqueta,'AREA DEL CIRCULO')),
new(Cajacir, text_item('Ingresa el valor del radio')),
new(Cajacir2, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,circulo,Cajacir,Cajacir2))),
send(Vcirculo, append, Eticirculo),
send(Vcirculo, append, Cajacir),
send(Vcirculo, append, Boton),
send(Vcirculo, append, Cajacir2),
send(Vcirculo, open).
circulo(Cajacir,Cajacir2):-get(Cajacir,value,Valor1),
                get(Cajacir,value,Valor1),
                send(Cajacir2,value,Valor1*Valor1*3.1416).

vdiv:-new(Vdiv, dialog('DIVISION')),
new(Etidiv,label(etiqueta,'DIVISION DE DOS NUMEROS')),
new(Cajadiv, text_item('Ingresa el primer numero')),
new(Cajadiv2, text_item('Ingresa el segundo numero')),
new(Cajadiv3, text_item('Resultado')),
new(Boton, button(' Calcular ',message(@prolog,dividir,Cajadiv,Cajadiv2,Cajadiv3))),
send(Vdiv, append, Etidiv),
send(Vdiv, append, Cajadiv),
send(Vdiv, append, Cajadiv2),
send(Vdiv, append, Boton),
send(Vdiv, append, Cajadiv3),
send(Vdiv, open).
dividir(Cajadiv,Cajadiv2,Cajadiv3):-get(Cajadiv,value,Valor1),
                get(Cajadiv2,value,Valor2),
                send(Cajadiv3,value,Valor1/Valor2).






