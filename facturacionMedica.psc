Algoritmo servicioMedico
	menuPrincipal()
FinAlgoritmo

Funcion menuPrincipal()
	Definir opcion Como Entero
	Repetir
        Escribir "Menú principal:"
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
            De Otro Modo: Escribir "Opción inválida."
        Fin Segun
    Hasta Que opcion = 3 O opcion = -1
FinFuncion

Funcion seleccionPaciente()
	Repetir
        Escribir "Menú Ingreso de paciente"
		Escribir "Seleccione el tipo:"
		Escribir ""
        Escribir "1. Particular"
        Escribir "2. Obra Social"
        Escribir "3. Empresa"
		Escribir "4. Volver al menú principal"
        Escribir ""
        Leer opcion
		
        Segun opcion Hacer
            1: // Funcion para ingreso por particular
            2: // Funcion para ingreso por Obra social
            3: // Funcion para ingreso por Empresa
			4: borrar pantalla
				menuPrincipal()
            De Otro Modo:
				Borrar Pantalla
				Escribir "Opción inválida. Redirigiendo al menu"
				Esperar 1 Segundos
				Borrar Pantalla
        Fin Segun
    Hasta Que opcion = -1
FinFuncion

Funcion ingresoDatos()
	Definir nombre Como Caracter
	Escribir "Dentro de la funcion de ingresos de datos"
	Escribir "Ingrese el nombre: "
	leer nombre
FinFuncion

Funcion tipoFacturacion()
	Repetir
        Escribir "Menú Facturacion"
		Escribir "Seleccione el tipo:"
		Escribir ""
        Escribir "1. Cierre de caja"
        Escribir "2. Discriminada"
		Escribir "3. Volver al menú principal"
        Escribir ""
        Leer opcion
		
        Segun opcion Hacer
            1: // funcion para cierre de caja
            2: // funcion para facturacion discriminada
			3: borrar pantalla
				menuPrincipal()
            De Otro Modo:
				Borrar Pantalla
				Escribir "Opción inválida. Redirigiendo al menu facturacion"
				Esperar 1 Segundos
				Borrar Pantalla
        Fin Segun
    Hasta Que opcion = -1
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
	