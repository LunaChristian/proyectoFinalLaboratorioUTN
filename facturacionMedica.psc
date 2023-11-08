Algoritmo servicioMedico
	Definir vU,vC, largoVector, validacion como entero
	largoVector <- 5;	
	Dimension vectorUsuarios[largoVector], vectorClaves[largoVector];
	
	vectorUsuarios[1] <- "Admin"; vectorClaves[1] <- "Admin"
	vectorUsuarios[2] <- "User1"; vectorClaves[2] <- "123"
	vectorUsuarios[3] <- "User2"; vectorClaves[3] <- "234"
	vectorUsuarios[4] <- "User3"; vectorClaves[4] <- "345"
	vectorUsuarios[5] <- "User4"; vectorClaves[5] <- "456"
	
	//Esperar 4 segundos
	//pantallaLogo()
	
	// devoler booleano para ingresar al menuPrincipal?
	validacion <- login(largoVector, vectorUsuarios, vectorClaves)
	
	Si validacion = 1 Entonces
		ingreso()
		menuPrincipal()
	SiNo
		Borrar Pantalla;
		Escribir "El usuario y/o contraseña son incorrectos"
	FinSi
	
	
	
FinAlgoritmo

//La siguiente funcion tiene que devolver un booleano
Funcion flag <- login(largoVector Por valor, vectorUsuarios, vectorClaves Por Referencia)
	Definir indice Como Entero
	Definir usuario, clave Como Caracter
	
	Escribir "Pantalla de Login"
	Escribir "User " Sin Saltar; Leer usuario;
	Escribir "Clave" Sin saltar; leer clave;
	
	//logica de busqueda
	para i <- 1 hasta largoVector Con Paso 1 Hacer
		si usuario = vectorUsuarios[i] Entonces
			indice <- i;
		FinSi
	FinPara
	
	//validacion de los datos funcion SI
	Si clave = vectorClaves[indice] Entonces
		flag <- 1;
	SiNo
		flag <- 0;
	FinSi
FinFuncion

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
            1: ingresoDatos()
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

Funcion ingreso
	Borrar Pantalla
	Escribir "Login exitoso"
	Esperar 1500 Milisegundos
	Borrar Pantalla
	Para i=0 Hasta 3 Con Paso 1 Hacer
		Borrar Pantalla
		Escribir "Ingresando"
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Ingresando."
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Ingresando. ."
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Ingresando. . ."
		Esperar 190 Milisegundos		
	Fin Para
	Borrar Pantalla
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

Funcion pantallaLogo()
	para i <- 1 hasta 11 Con Paso 1 Hacer
		Escribir ""
	FinPara
	
	Escribir "                                                  ","    ______           __                   ______ "
	Escribir "                                                  ","   / ____/___ ______/ /___  ___________  / __/ /_"
	Escribir "                                                  ","  / /_  / __ `/ ___/ __/ / / / ___/ __ \/ /_/ __/"
	Escribir "                                                  "," / __/ / /_/ / /__/ /_/ /_/ (__  ) /_/ / __/ /_  "
	Escribir "                                                  ","/_/    \__,_/\___/\__/\__,_/____/\____/_/  \__/ (C)"
	Escribir ""
	Escribir "                                                                  ","Sistema de facturacion"
	
	para i <- 1 hasta 10 Con Paso 1 Hacer
		Escribir ""
	FinPara
	
	Esperar 6 segundos
	Borrar Pantalla	
FinFuncion

