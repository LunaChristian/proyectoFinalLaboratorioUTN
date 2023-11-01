Algoritmo servicioMedico
	menuPrincipal()
FinAlgoritmo

Funcion menuPrincipal()
	Definir opcion Como Entero
	Repetir
        Escribir "Men� principal:"
        Escribir "1. Ingreso"
        Escribir "2. Facturacion"
        Escribir "3. Salir"
        Escribir ""
        Leer opcion
		
        Segun opcion Hacer
            1: Borrar Pantalla //este comando borra deja la pantalla limpia
				seleccionPaciente()
            2: Borrar Pantalla //este comando borra deja la pantalla limpia
				tipoFacturacion()
            3: Borrar Pantalla
				salida()				
            -1: // misma funcion que opcion 3
            De Otro Modo: Escribir "Opci�n inv�lida."
        Fin Segun
    Hasta Que opcion = 3 O opcion = -1
FinFuncion

Funcion seleccionPaciente()
	Repetir
        Escribir "Men� Ingreso de paciente"
		Escribir "Seleccione el tipo:"
		Escribir ""
        Escribir "1. Particular"
        Escribir "2. Obra Social"
        Escribir "3. Empresa"
		Escribir "4. Volver al men� principal"
        Escribir ""
        Leer opcion
		
        Segun opcion Hacer
            1: ingresoDatos()
            2: // Funcion para ingreso por Obra social
            3: // Funcion para ingreso por Empresa
			4: borrar pantalla
				menuPrincipal()
            De Otro Modo:
				Borrar Pantalla
				Escribir "Opci�n inv�lida. Redirigiendo al menu"
				Esperar 1 Segundos
				Borrar Pantalla
        Fin Segun
    Hasta Que opcion = -1
FinFuncion

Funcion ingresoDatos()
	Definir nombre Como Caracter
	Escribir "Dentro de la funcion de ingresos de datos"
	Escribir "Ingrese el nombre: "
	Escribir "ya se ingreso"
//	leer nombre
	
	seleccionServicios()
FinFuncion

Funcion seleccionServicios()
	Escribir "dentro de seleccionServicios"
	//seleccionar los servicios desde bbdd
	//aca va la formula para calcular los costos
	funcionCalculo()
FinFuncion

Funcion emitirFactura()
	Escribir "Emision de factura"
	//Esto deberia devolver datos a la bbdd facturacion
	menuPrincipal()
FinFuncion

Funcion funcionCalculo()
	Escribir "dentro de funcionCalculo"
	// esto no deberia imprimir por pantalla
	// ver con Palomino
FinFuncion

Funcion tipoFacturacion()
	Repetir
        Escribir "Men� Facturacion"
		Escribir "Seleccione el tipo:"
		Escribir ""
        Escribir "1. Cierre de caja"
        Escribir "2. Discriminada"
		Escribir "3. Volver al men� principal"
        Escribir ""
        Leer opcion
		
        Segun opcion Hacer
            1: // funcion para cierre de caja
            2: // funcion para facturacion discriminada
			3: borrar pantalla
				menuPrincipal()
            De Otro Modo:
				Borrar Pantalla
				Escribir "Opci�n inv�lida. Redirigiendo al menu facturacion"
				Esperar 1 Segundos
				Borrar Pantalla
        Fin Segun
    Hasta Que opcion = -1
FinFuncion

Funcion cierreCaja()
	Escribir "dentro de cierreCaja"
	//llamar a una funcion para calcular el cierre total de facturacion
	//toma datos de la bbdd facturacion
FinFuncion

Funcion facturacionDiscriminada()
	Escribir "dentro de facturacionDiscriminada"
	//llamar a una funcion para calcular el cierre total de facturacion
	//toma datos de la bbdd facturacion
FinFuncion

Funcion salida() // funcion para la salida del programa. Algo que genere transicion
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Borrar Pantalla
		Escribir "Cerrando sesion"
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Cerrando sesion."
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Cerrando sesion. ."
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Cerrando sesion. . ."
		Esperar 190 Milisegundos		
	Fin Para
	Borrar Pantalla
	Esperar 190 Milisegundos	
	Escribir "Gracias por usar nuestro software."
FinFuncion
