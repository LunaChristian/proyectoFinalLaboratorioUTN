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
				ingresoPaciente()
            2: // aca va la funcion para la Facturacion
            3: // funcion para la salida del programa. Algo que genere transicion
            -1: // misma funcion que opcion 3
            De Otro Modo: Escribir "Opción inválida."
        Fin Segun
    Hasta Que opcion = 3 O opcion = -1
FinFuncion

Funcion ingresoPaciente()
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
            1: Escribir "Ha elegido la Opción 1."
            2: Escribir "Ha elegido la Opción 2."
            3: Escribir "Saliendo del programa..."
			4: borrar pantalla
				menuPrincipal()
            De Otro Modo:
				Borrar Pantalla
				Escribir "Opción inválida. Redirigiendo al menu principal"
				Esperar 1 Segundos
				Borrar Pantalla
        Fin Segun
    Hasta Que opcion = -1
FinFuncion
	