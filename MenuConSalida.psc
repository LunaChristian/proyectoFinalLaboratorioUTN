Algoritmo menuPrincipal
    Definir opcion Como Entero
	
    Repetir
        Escribir "Menú principal:"
        Escribir "1. Ingreso de paciente"
        Escribir "2. Facturacion"
        Escribir "3. Salir"
        Escribir ""
        Leer opcion
		
        Segun opcion Hacer
            1: Escribir "Ha elegido la Opción 1."
            2: Escribir "Ha elegido la Opción 2."
            3: Escribir "Saliendo del programa..."
            -1: Escribir "Saliendo del programa..."
            De Otro Modo: Escribir "Opción inválida."
        Fin Segun
    Hasta Que opcion = 3 O opcion = -1
	
FinAlgoritmo