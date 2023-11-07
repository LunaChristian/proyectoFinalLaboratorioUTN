Algoritmo bbddNombenclador
	definir n, m Como Entero
	n <- 10
	m <- 2
	Dimension nomencladorCod[n]
	Dimension nomencladorDesc[n,m]
	
	Para i <- 1 hasta n Con Paso 1 Hacer
		si i < 10 Entonces
			nomencladorCod[i] <- "EPQ00" + ConvertirATexto(i)
		SiNo
			si i >= 10 y i < 100 Entonces
				nomencladorCod[i] <- "EPQ0" + ConvertirATexto(i)
			SiNo
				si i >= 100 Entonces
					nomencladorCod[i] <- "EPQ" + ConvertirATexto(i)
				FinSi
			FinSi
		FinSi
	FinPara
	
	Para i <- 1 hasta n Con Paso 1 Hacer
		Escribir nomencladorCod[i]
	FinPara
FinAlgoritmo
