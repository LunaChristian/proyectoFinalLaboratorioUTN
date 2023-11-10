Algoritmo servicioMedico
	Definir largoVector, validacion como entero
	largoVector <- 150
	Dimension vectorUsuarios[largoVector], vectorClaves[largoVector], vectorPacientes[largoVector], nomDesc[largoVector], nomPrec[largoVector];
	Dimension vectorDni[largoVector], vectorNombre[largoVector], vectorApellido[largoVector], vectorEdad[largoVector], vectorTelefono[largoVector], vectorEmail[largoVector];
	
	/// Datos aleatorios de prestaciones medicas
	nomDesc[1] <- "Hemograma completo"; nomPrec[1] <- 50;
	nomDesc[2] <- "Electrocardiograma (ECG)"; nomPrec[2] <- 30;
	nomDesc[3] <- "Radiografia de torax"; nomPrec[3] <- 40;
	nomDesc[4] <- "Prueba de coagulacion"; nomPrec[4] <- 25;
	nomDesc[5] <- "Evaluacion de funcion renal"; nomPrec[5] <- 35;
	nomDesc[6] <- "Prueba de funcion hepatica"; nomPrec[6] <- 30;
	nomDesc[7] <- "Glicemia en ayunas"; nomPrec[7] <- 20;
	nomDesc[8] <- "Grupo sanguineo y factor Rh"; nomPrec[8] <- 15;
	nomDesc[9] <- "Evaluacion de funcion pulmonar"; nomPrec[9] <- 45;
	nomDesc[10] <- "Prueba de VIH"; nomPrec[10] <- 50;

	/// Datos aleatorios de usuarios registrados
	vectorUsuarios[1] <- "Admin"; vectorClaves[1] <- "Admin"
	vectorUsuarios[2] <- "User1"; vectorClaves[2] <- "123"
	vectorUsuarios[3] <- "User2"; vectorClaves[3] <- "234"
	vectorUsuarios[4] <- "User3"; vectorClaves[4] <- "345"
	vectorUsuarios[5] <- "User4"; vectorClaves[5] <- "456"
	
	/// Datos aleatorios de pacientes registrados
	vectorDni[1] <- 35421987; vectorNombre[1] <- "Juan"; vectorApellido[1] <- "Perez"; vectorEdad[1] <- 25; vectorTelefono[1] <- 1122334455; vectorEmail[1] <- "juan.perez@example.com"
	vectorDni[2] <- 41170632; vectorNombre[2] <- "Maria"; vectorApellido[2] <- "Gonzalez"; vectorEdad[2] <- 30; vectorTelefono[2] <- 1188776655; vectorEmail[2] <- "maria.gonzalez@example.com"
	vectorDni[3] <- 30589024; vectorNombre[3] <- "Carlos"; vectorApellido[3] <- "Rodriguez"; vectorEdad[3] <- 22; vectorTelefono[3] <- 1144332211; vectorEmail[3] <- "carlos.rodriguez@example.com"
	vectorDni[4] <- 44351876; vectorNombre[4] <- "Laura"; vectorApellido[4] <- "Lopez"; vectorEdad[4] <- 28; vectorTelefono[4] <- 1188996655; vectorEmail[4] <- "laura.lopez@example.com"
	vectorDni[5] <- 26073241; vectorNombre[5] <- "Andres"; vectorApellido[5] <- "Garcia"; vectorEdad[5] <- 35; vectorTelefono[5] <- 1166998877; vectorEmail[5] <- "andres.garcia@example.com"
	vectorDni[6] <- 39857214; vectorNombre[6] <- "Ana"; vectorApellido[6] <- "Martinez"; vectorEdad[6] <- 29; vectorTelefono[6] <- 1122332211; vectorEmail[6] <- "ana.martinez@example.com"
	vectorDni[7] <- 35540892; vectorNombre[7] <- "Pablo"; vectorApellido[7] <- "Sanchez"; vectorEdad[7] <- 32; vectorTelefono[7] <- 1199776655; vectorEmail[7] <- "pablo.sanchez@example.com"
	vectorDni[8] <- 42673850; vectorNombre[8] <- "Gabriela"; vectorApellido[8] <- "Diaz"; vectorEdad[8] <- 26; vectorTelefono[8] <- 1144669988; vectorEmail[8] <- "gabriela.diaz@example.com"
	vectorDni[9] <- 23895042; vectorNombre[9] <- "Javier"; vectorApellido[9] <- "Fernandez"; vectorEdad[9] <- 31; vectorTelefono[9] <- 1122336677; vectorEmail[9] <- "javier.fernandez@example.com"
	vectorDni[10] <- 40712589; vectorNombre[10] <- "Carolina"; vectorApellido[10] <- "Ramirez"; vectorEdad[10] <- 27; vectorTelefono[10] <- 1188771122; vectorEmail[10] <- "carolina.ramirez@example.com"


//	Para i <- 1 Hasta 10 Con Paso 1
//		Escribir "DNI: ", vectorDni[i], " Nombre: ", vectorNombre[i], " Apellido: ", vectorApellido[i]
//		Escribir "Edad: ", vectorEdad[i], " Tel�fono: ", vectorTelefono[i], " Email: ", vectorEmail[i]
//		Escribir("")  // Salto de l�nea para separar cada conjunto de datos
//	Fin Para
	
	//Esperar 3 segundos
	//pantallaLogo();
	
	//devoler booleano para ingresar al menuPrincipal?
	validacion <- login(largoVector, vectorUsuarios, vectorClaves)
	
	Si validacion = 1 Entonces
		//pantallaIngreso()
		menuPrincipal(largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
	SiNo
		Borrar Pantalla
		Escribir "El usuario y/o contrase�a son incorrectos"
		Esperar 1500 Milisegundos
		//ver el loop para volver al menu inicial
	FinSi
FinAlgoritmo

//Login de usuarios
//La siguiente funcion tiene que devolver un booleano
Funcion flag <- login(largoVector Por valor, vectorUsuarios, vectorClaves Por Referencia)
	Definir indice Como Entero
	Definir usuario, clave Como Caracter
	
	Escribir "Ingrese su usuario y clave"
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

Funcion menuPrincipal(largoVector Por Valor, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail Por Referencia)
	Definir opcion Como Entero
	Escribir "Men� principal:"
	Escribir "1. Facturar servicio"
	Escribir "2. Reporte de facturacion"
	Escribir "3. Salir"
	Escribir ""
	Leer opcion
	
	Segun opcion Hacer
		1: Borrar Pantalla //este comando borra deja la pantalla limpia
			seleccionPaciente(largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
		2: Borrar Pantalla //este comando borra deja la pantalla limpia
			//tipoFacturacion()
		3: Borrar Pantalla
			pantallaSalida()				
		De Otro Modo: Escribir "Opci�n inv�lida."
	Fin Segun
FinFuncion

Funcion seleccionPaciente(largoVector Por Valor, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail Por Referencia)
	Definir flagTipoPac Como Entero
	
	Escribir "Men� ingreso de paciente"
	Escribir "Seleccione el tipo:"
	Escribir ""
	Escribir "1. Particular"
	Escribir "2. Obra Social"
	Escribir "3. Empresa"
	Escribir "4. Volver al men� principal"
	Escribir ""
	Leer flagTipoPac
	
	Segun flagTipoPac Hacer
			//Como es la misma funcion para las 3 opciones poner un flag
			//para determinar el tipo de facturacion despues
		1: borrar pantalla
			ingresoDatos(flagTipoPac, largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
		2: borrar pantalla
			ingresoDatos(flagTipoPac, largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
		3: borrar pantalla
			ingresoDatos(flagTipoPac, largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
		4: borrar pantalla
			menuPrincipal(largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
		De Otro Modo:
			Borrar Pantalla
			Escribir "Opci�n inv�lida. Redirigiendo al menu"
			Esperar 1500 Milisegundos
			Borrar Pantalla
			seleccionPaciente(largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
	Fin Segun
FinFuncion

Funcion ingresoDatos(flagTipoPac, largoVector Por valor, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail Por Referencia)
	//altaConsumidor()
	Definir dni, cuit Como Entero
	Escribir "Dentro de la funcion de ingresos de datos"
	
	Segun flagTipoPac hacer
		1:
			Escribir "Ingrese el numero de DNI: "
			leer dni
			si dni > 99999999 O dni < 1000000 Entonces
				Escribir "El numero ingresado no es un dni valido"
				Esperar 1200 Milisegundos
				Borrar Pantalla
				ingresoDatos(flagTipoPac, largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
			SiNo
				Para i <- 1 hasta largoVector Con Paso 1 Hacer
					Si dni = vectorDni[i] Entonces
						Escribir "Nombre y apellido: ",vectorNombre[i]," ", vectorApellido[i];
						Escribir "DNI: ",vectorDni[i];
						Escribir "Edad: ",vectorEdad[i];
						Escribir "Telefono: ",vectorTelefono[i];
						Escribir "email: ",vectorEmail[i];
						Escribir "";
						Escribir "Enter para continuar"
						Esperar Tecla
						Borrar Pantalla
						
					SiNo
						///aca va opciones de dar de alta 
					FinSi
				FinPara
				///reemplazar por resultado de busqueda y confirmacion en vector
				Esperar 1200 milisegundos
			FinSi
		2:
			Escribir "Ingrese el DNI: "
			leer dni
			si dni > 99999999 O dni < 1000000 Entonces
				Escribir "El numero ingresado no es un dni valido"
				Esperar 1500 Milisegundos
				Borrar Pantalla
				ingresoDatos(flagTipoPac, largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
			SiNo
				Para i <- 1 hasta largoVector Con Paso 1 Hacer
					Si dni = vectorDni[i] Entonces
						Escribir "Posicion " i
						Esperar Tecla
					FinSi
				FinPara
				///reemplazar por resultado de busqueda y confirmacion en vector
				Esperar 1500 milisegundos
			FinSi
		3:
			Escribir "Ingrese el cuit: "
			leer cuit
			si ciut > 99999999 O cuit < 1000000 Entonces
				Escribir "El numero ingresado no es un cuit valido"
				Esperar 1500 Milisegundos
				Borrar Pantalla
				ingresoDatos(flagTipoPac, largoVector, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail)
			SiNo
				Para i <- 1 hasta largoVector Con Paso 1 Hacer
					Si dni = vectorDni[i] Entonces
						Escribir "Posicion " i
						Esperar Tecla
					FinSi
				FinPara
				///reemplazar por resultado de busqueda y confirmacion en vector
				Esperar 1500 milisegundos
			FinSi
	FinSegun
	// buscar los datos en un vector y devolverlos por pantalla para confirmar si ya existiera
	//seleccionServicios()
FinFuncion

Funcion altaConsumidor()
	
FinFuncion

Funcion seleccionServicios
	Escribir "dentro de seleccionServicios"
	//seleccionar los servicios desde bbdd
	//aca va la formula para calcular los costos
	funcionCalculo()
FinFuncion
//
//Funcion emitirFactura
//	Escribir "Emision de factura"
//	//Esto deberia devolver datos a la bbdd facturacion
//	menuPrincipal
//FinFuncion

Funcion funcionCalculo
	Escribir "dentro de funcionCalculo"
	// esto no deberia imprimir por pantalla
	// ver con Palomino
FinFuncion

//Funcion tipoFacturacion
//	Repetir
//        Escribir "Men� Facturacion"
//		Escribir "Seleccione el tipo:"
//		Escribir ""
//        Escribir "1. Cierre de caja"
//        Escribir "2. Discriminada"
//		Escribir "3. Volver al men� principal"
//        Escribir ""
//        Leer opcion
//		
//        Segun opcion Hacer
//            1: // funcion para cierre de caja
//            2: // funcion para facturacion discriminada
//			3: borrar pantalla
//				menuPrincipal
//            De Otro Modo:
//				Borrar Pantalla
//				Escribir "Opci�n inv�lida. Redirigiendo al menu facturacion"
//				Esperar 1 Segundos
//				Borrar Pantalla
//        Fin Segun
//    Hasta Que opcion = -1
//FinFuncion
//
//Funcion cierreCaja
//	Escribir "dentro de cierreCaja"
//	//llamar a una funcion para calcular el cierre total de facturacion
//	//toma datos de la bbdd facturacion
//FinFuncion
//
//Funcion facturacionDiscriminada
//	Escribir "dentro de facturacionDiscriminada"
//	//llamar a una funcion para calcular el cierre total de facturacion
//	//toma datos de la bbdd facturacion
//FinFuncion
//
Funcion pantallaIngreso()
	Para i=0 Hasta 3 Con Paso 1 Hacer
		Borrar Pantalla
		Escribir "Login exitoso"
		Escribir "Ingresando"
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Login exitoso"
		Escribir "Ingresando."
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Login exitoso"
		Escribir "Ingresando. ."
		Esperar 190 Milisegundos
		Borrar Pantalla
		Escribir "Login exitoso"
		Escribir "Ingresando. . ."
		Esperar 190 Milisegundos		
	Fin Para
	Borrar Pantalla
FinFuncion

Funcion pantallaSalida() // funcion para la salida del programa. Algo que genere transicion
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
	pantallaLogo()
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