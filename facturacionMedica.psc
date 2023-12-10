Algoritmo servicioMedico
	Definir long, validacion, contador como entero
	long <- 10;

	Dimension vectorUsuarios[long], vectorClaves[long], vectorPacientes[long], nomDesc[long], nomPrec[long], nomHon[long], nomValH[long], nomGasto[long], nomValG[long];
	Dimension vectorDni[long], vectorNombre[long], vectorApellido[long], vectorEdad[long], vectorTelefono[long], vectorEmail[long];
	
	//Inicializacion de vectores (BBDD)
	inicioVectorNomenclador(nomDesc, nomPrec, nomHon, nomValH, nomGasto, nomValG);
	inicioVectorUsuarios(vectorUsuarios, vectorClaves);
	inicioVectorDatosPers(vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail);
	
	///Esperar 3 segundos
	///pantallaLogo();
	
	///devoler booleano para ingresar al menuPrincipal?
	validacion <- login(long, vectorUsuarios, vectorClaves);
	
	Si validacion = 1 Entonces
		pantallaIngreso();
		menuPrincipal(long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG);
	SiNo
		contador <- 1;
		Repetir
			Borrar Pantalla
			contador <- contador + 1
			Escribir "El usuario y/o contraseña son incorrectos"
			Esperar 1500 Milisegundos
			Borrar Pantalla
			validacion <- login(long, vectorUsuarios, vectorClaves)
		Hasta Que contador > 3
		Escribir "Ha ingresado usuario y/o contraseña son incorrectos por mas de 3 intentos"
		Esperar 1500 Milisegundos
		Borrar Pantalla
		pantallaSalida();
	FinSi
FinAlgoritmo

//Login de usuarios
//La siguiente funcion tiene que devolver un booleano
Funcion flag <- login(long Por valor, vectorUsuarios, vectorClaves Por Referencia)
	Definir indice Como Entero
	Definir usuario, clave Como Caracter
	
	Escribir "Ingrese su usuario y clave"
	Escribir "User " Sin Saltar; Leer usuario;
	Escribir "Clave" Sin saltar; leer clave;
	
	//logica de busqueda
	para i <- 1 hasta long Con Paso 1 Hacer
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

Funcion menuPrincipal(long Por Valor, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG Por Referencia)
	Definir opcion Como Entero
	Escribir "Menú principal:"
	Escribir "1. Facturar servicio"
	Escribir "2. Reporte de facturacion"
	Escribir "3. Salir"
	Escribir ""
	Leer opcion
	
	Segun opcion Hacer
		1: Borrar Pantalla
			seleccionPaciente(long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
		2: Borrar Pantalla
			//tipoFacturacion()
		3: Borrar Pantalla
			pantallaSalida()				
		De Otro Modo: Escribir "Opción inválida."
	Fin Segun
FinFuncion

Funcion seleccionPaciente(long Por Valor, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG Por Referencia)
	Definir flagTipoPac Como Entero
	
	Escribir "Menú ingreso de paciente"
	Escribir "Seleccione el tipo:"
	Escribir ""
	Escribir "1. Particular"
	Escribir "2. Obra Social"
	Escribir "3. Empresa"
	Escribir "4. Volver al menú principal"
	Escribir ""
	Leer flagTipoPac
	
	Segun flagTipoPac Hacer
			//Como es la misma funcion para las 3 opciones poner un flag
			//para determinar el tipo de facturacion despues
		1: borrar pantalla
			ingresoDatos(flagTipoPac, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
		2: borrar pantalla
			ingresoDatos(flagTipoPac, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
		3: borrar pantalla
			ingresoDatos(flagTipoPac, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
		4: borrar pantalla
			menuPrincipal(long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
		De Otro Modo:
			Borrar Pantalla
			Escribir "Opción inválida. Redirigiendo al menu"
			Esperar 1500 Milisegundos
			Borrar Pantalla
			seleccionPaciente(long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
	Fin Segun
FinFuncion

Funcion ingresoDatos(flagTipoPac Por Valor, long Por valor, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG Por Referencia)
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
				ingresoDatos(flagTipoPac, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
			SiNo
				Para i <- 1 hasta long Con Paso 1 Hacer
					Si dni = vectorDni[i] Entonces
						Escribir "Paciente: "
						Escribir "Nombre: ", vectorNombre[i];
						Escribir "Apellido: ", vectorApellido[i];
						Escribir "DNI: ",vectorDni[i];
						Escribir "Edad: ",vectorEdad[i];
						Escribir "Telefono: ",vectorTelefono[i];
						Escribir "email: ",vectorEmail[i];
						Escribir "";
						Escribir "Presione enter para continuar"
						Esperar Tecla
						Borrar Pantalla
						seleccionServicios(flagTipoPac, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
					SiNo
						///aca va opciones de dar de alta 
					FinSi
				FinPara
				///reemplazar por resultado de busqueda y confirmacion en vector
				Esperar 1200 milisegundos
			FinSi
		2:
			///Utilizar el mismo vector agregando la condicion de descuento por obra social/plan
			Escribir "Ingrese el DNI: "
			leer dni
			si dni > 99999999 O dni < 1000000 Entonces
				Escribir "El numero ingresado no es un dni valido"
				Esperar 1500 Milisegundos
				Borrar Pantalla
				ingresoDatos(flagTipoPac, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
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
				ingresoDatos(flagTipoPac, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
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
FinFuncion

Funcion altaConsumidor()
	
FinFuncion

Funcion seleccionServicios(flagTipo Por Valor, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG Por Referencia)
	
	Definir aux, selec, limite, num, opc Como Entero
	Dimension seleccion[10]
	aux <- -1; limite <- 0;
	
	para i <- 1 hasta 10 Con Paso 1 Hacer
		seleccion[i] <- 0;
	FinPara
	
	Repetir
		Escribir "Seleccion de servicios"
		Escribir "Ingrese de a uno los codigos. 0 para terminar"
		Escribir ""
		
		Para i <- 1 hasta long Con Paso 1 Hacer
			Escribir i, "- ", nomDesc[i];
		FinPara
		
		Leer cod
		
		si cod > 0 Y cod <= 10 Entonces
			limite <- limite + 1
			para n <- 1 hasta 10 con paso 1 Hacer
				si cod = seleccion[n] Entonces
					Escribir "El servicio ya fue seleccionado";
					limite <- limite - 1;
				SiNo
					seleccion[limite+1] <- cod;
				FinSi
			FinPara
		FinSi
		
		si cod < 0 O cod >= 11 Entonces
			Escribir "El codigo no es valido"
			Esperar 2 segundos
		SiNo
			si cod = 0 Entonces
				aux <- 0;
			FinSi			
		FinSi
		limite <- limite + 1
		Borrar Pantalla
	Hasta Que aux = 0 O limite = 10
	
	///muestra el listado de servicios seleccionados
	Escribir "Servicios seleccionados: ";
	Escribir "";
	Para i <- 1 hasta limite - 1 con paso 1 Hacer
		num <- seleccion[i]
		Escribir i, "- " nomDesc[num];
		Escribir "Costo: $", (nomHon[num]*nomValH[num])+(nomGasto[num]*nomValG[num]);
		Escribir ""
	FinPara
	Escribir "--------------------------------------------";
	Escribir "Ingrese una opcion: 1- Facturar 2- Modificar"
	Leer selec
	
	Segun selec Hacer
		1: Borrar Pantalla
			emitirFactura(flagTipo, num, limite, seleccion, nomDesc, nomHon, nomValH, nomGasto, nomValG)
			Escribir "Presione enter para continuar"
			Esperar Tecla
			Borrar pantalla
			menuPrincipal(long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
		2:	Borrar pantalla
			seleccionServicios(flagTipo, long, vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail, nomDesc, nomHon, nomValH, nomGasto, nomValG)
		De otro modo:
			Mientras selec <> 1 o selec <> 2 Hacer
				Escribir ""
				Escribir "********* La opcion es invalida *********"
				Escribir "--------------------------------------------";
				Escribir "Ingrese una opcion: 1- Facturar 2- Modificar"
				leer selec
			FinMientras
	FinSegun
FinFuncion

Funcion emitirFactura(flagTipo, num, limite, seleccion, nomDesc, nomHon, nomValH, nomGasto, nomValG Por Referencia)
	Definir acum, aux, iva, costo Como Real
	Escribir "Factura n° " Aleatorio(1456, 2869)
	
	Escribir "Servicios seleccionados: ";
	Escribir "";
	Para i <- 1 hasta limite - 1 con paso 1 Hacer
		num <- seleccion[i]
		Escribir i, "- " nomDesc[num];
		costo <- (nomHon[num]*nomValH[num])+(nomGasto[num]*nomValG[num]);
		Escribir "Costo: $ ", costo;
		acum <- acum + costo;
		Escribir ""
	FinPara
	
	Escribir "Subtotal:    $ " acum
	funcionImpuestos(flagTipo, acum)
FinFuncion

Funcion funcionImpuestos(tipo, acum Por Referencia)
	Definir aux, iva, costo Como Real

	segun tipo hacer
		1:
			iva <- acum * 0.21
			aux <- TRUNC(iva)
			iva <- (TRUNC((iva - aux)*100)/100) + TRUNC(iva)
			Escribir "IVA (21.00): $ " iva
			Escribir "Total:       $ " iva + acum
			Escribir ""
			
		2:
			Escribir "IVA:          Exento "
			Escribir "Total:       $ " acum
			Escribir ""
		3:
			iva <- acum * 0.105
			aux <- TRUNC(iva)
			iva <- (TRUNC((iva - aux)*100)/100) + TRUNC(iva)
			Escribir "IVA (10.5):  $ " iva
			Escribir "Total:       $ " iva + acum
			Escribir ""
	FinSegun
FinFuncion

//Funcion tipoFacturacion
//	Repetir
//        Escribir "Menú Facturacion"
//		Escribir "Seleccione el tipo:"
//		Escribir ""
//        Escribir "1. Cierre de caja"
//        Escribir "2. Discriminada"
//		Escribir "3. Volver al menú principal"
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
//				Escribir "Opción inválida. Redirigiendo al menu facturacion"
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

Funcion inicioVectorNomenclador (nomDesc, nomPrec, nomHon, nomValH, nomGasto, nomValG Por Referencia)
	/// Datos aleatorios de prestaciones medicas
	nomDesc[1]<-"Hemograma completo";				nomPrec[1]<-50;	nomHon[1]<-22.4;		nomValH[1]<-50;	nomGasto[1]<-50;		nomValG[1]<-6;
	nomDesc[2]<-"Electrocardiograma (ECG)";			nomPrec[2]<-30;	nomHon[2]<-3.94;		nomValH[2]<-11;	nomGasto[2]<-30;		nomValG[2]<-3;
	nomDesc[3]<-"Radiografia de torax";				nomPrec[3]<-40;	nomHon[3]<-11.5;		nomValH[3]<-30;	nomGasto[3]<-40;		nomValG[3]<-3;
	nomDesc[4]<-"Prueba de coagulacion";				nomPrec[4]<-25;	nomHon[4]<-22.4;		nomValH[4]<-36;	nomGasto[4]<-25;		nomValG[4]<-6;
	nomDesc[5]<-"Evaluacion de funcion renal";		nomPrec[5]<-35;	nomHon[5]<-3.94;		nomValH[5]<-10;	nomGasto[5]<-35;		nomValG[5]<-6;
	nomDesc[6]<-"Prueba de funcion hepatica";		nomPrec[6]<-30;	nomHon[6]<-3.94;		nomValH[6]<-35;	nomGasto[6]<-30;		nomValG[6]<-3;
	nomDesc[7]<-"Glicemia en ayunas";				nomPrec[7]<-20;	nomHon[7]<-22.4;		nomValH[7]<-11;	nomGasto[7]<-20;		nomValG[7]<-3;
	nomDesc[8]<-"Grupo sanguineo y factor Rh";		nomPrec[8]<-15;	nomHon[8]<-22.4;		nomValH[8]<-35;	nomGasto[8]<-15;		nomValG[8]<-6;
	nomDesc[9]<-"Evaluacion de funcion pulmonar";	nomPrec[9]<-45;	nomHon[9]<-3.94;		nomValH[9]<-34;	nomGasto[9]<-45;		nomValG[9]<-3;
	nomDesc[10]<-"Prueba de VIH";					nomPrec[10]<-50;	nomHon[10]<-22.4;	nomValH[10]<-48;	nomGasto[10]<-50;	nomValG[10]<-6;
FinFuncion

Funcion inicioVectorUsuarios(vectorUsuarios, vectorClaves Por Referencia)
	/// Datos aleatorios de usuarios registrados
	vectorUsuarios[1] <- "Admin"; vectorClaves[1] <- "Admin"
	vectorUsuarios[2] <- "User1"; vectorClaves[2] <- "123"
	vectorUsuarios[3] <- "User2"; vectorClaves[3] <- "234"
	vectorUsuarios[4] <- "User3"; vectorClaves[4] <- "345"
	vectorUsuarios[5] <- "User4"; vectorClaves[5] <- "456"
Fin funcion

Funcion inicioVectorDatosPers(vectorDni, vectorNombre, vectorApellido, vectorEdad, vectorTelefono, vectorEmail Por Referencia)
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
Fin Funcion
