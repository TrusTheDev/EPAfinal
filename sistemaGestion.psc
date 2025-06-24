Algoritmo sistemaGestion
	//Logica para agregar un socio
	Definir nombre, apellido, codigodesocioC, ocupacion, correo como cadena;
	Definir edad, contsocio Como Entero;
	
	//Logica para procesar prestamo
	Definir isbnLibro, codigoLibro, fecha como cadena;
	Definir dia,mes,anio, acumu_press, FiccionStock, TecnicoStock, InfantilStock, RefStock, diasDePrestamo  Como Entero;
	
	
	//Utilidades del algoritmo principal
	Definir opcionP, acumMultas como entero;
	
	//Logica para procesarDevoluciones
	
	//Logica para reportes estadisticos
	Definir diasDeatraso, total_stock_referencia, total_stock_infantil, total_stock_tecnico, total_stock_ficcion, totalLibros, acumCatRef, acumCatInf, acumCatTec, acumCatFic como entero;
	
	//--------------------------------------------------------------------------------------------
	//Inicio del algoritmo 
	acumCatFic = 0;
	acumCatInf = 0;
	acumCatRef = 0;
	acumCatTec = 0;
	diasDeatraso = 0;
	TecnicoStock = -1
	FiccionStock = -1;
	InfantilStock = -1;
	RefStock = -1;
	
	//Relleno con valores para que no me jodan en la depuracion comentar en la exposición
	TecnicoStock = 5;
	FiccionStock = 5;
	InfantilStock = 5;
	RefStock = 5;
	nombre = "Ivan";
	apellido = "Viegas";
	edad = 18;
	ocupacion = "Médico";
	correo = "ivanbordeira2015@hotmail.com";
	codigodesocioC = "IVA_VIE_0001";


	//Jugar con estos números para reportes estadisticos
	totalMultasEstudiantes = 0
	totalMultasDocentes = 0
	totalMultasRegulares = 0
	totalMultas = 0
	acumu_press = 0;
	acumMultas = 0;
	acumCatRef = 0;
	acumCatTec = 0;
	acumCatInf = 0;
	acumCatFic = 0;
	//Seria la fecha de mañana
	año = 2025
	mes = 7
	dia = 29
	// Dejarlo descomentado SOLO en úso real
	//año = Trunc(FechaActual()/10000)
	//mes = Trunc(((FechaActual() - año*10000)/100))
	//dia = Trunc(FechaActual() - (año*10000 + mes*100))
	
	contsocioC = 0;
	opcionP = -1
	
	// aca iniciaria
	
	Mientras TecnicoStock < 0 Hacer
		Escribir "Ingresar la cantidad de TecnicoStock";
		Leer TecnicoStock;
		total_stock_tecnico <-- TecnicoStock;
	Fin Mientras
	
	Mientras FiccionStock < 0 Hacer
		Escribir "Ingresar la cantidad de FiccionStock";
		Leer FiccionStock;
		total_stock_ficcion<-- FiccionStock;
	Fin Mientras
	
	Mientras InfantilStock < 0 Hacer
		Escribir "Ingresar la cantidad de InfantilStock";
		Leer InfantilStock;
		total_stock_infantil <-- InfantilStock;
	Fin Mientras
	
	Mientras RefStock < 0 Hacer
		Escribir "Ingresar la cantidad de RefStock";
		Leer RefStock;
		total_stock_referencia <-- RefStock;
	Fin Mientras
	
	Mientras opcionP <> 0 Hacer
		Mostrar "Bienvenido al gestión de préstamos de libros,pulse 0: para salir,pulse 1: para registrar nuevos socios, 2: para prestar libros, 3: para devolver libros"
		Leer opcionP
		Segun opcionP Hacer
			0: 
			1: 
				NuevoSocioBiblioteca(nombre, apellido, codigodesocioC,ocupacion,correo,edad,contsocio);
				generarComprobante(codigodesocioC, nombre, apellido, fecha, dia, mes, año, opcionC);
			2:
				procesarPrestamo(codigodesocioC, isbnLibro,codigoLibro, fecha, acumMultas,acumu_press, FiccionStock, TecnicoStock, InfantilStock, RefStock, acumCatFic,acumCatRef,acumCatTec, acumCatInf);
				generarComprobante(codigodesocioC, nombre, apellido, fecha, dia, mes, año, opcionC);
				Escribir codigoLibro
			3:
				ProcesarDevoluciones(ocupacion,codigoLibro,dia,mes,año, acumMultas, FiccionStock, TecnicoStock, RefStock, totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, totalMultas);
				generarComprobante(codigodesocioC, nombre, apellido, fecha, dia, mes, año, opcionC);
			Otro:
				Escribir  "Opcion invalida"
		Fin Segun
	FinMientras
	
FinAlgoritmo

SubAlgoritmo NuevoSocioBiblioteca(nombre Por Referencia,apellido Por Referencia, codigodesocioC Por Referencia, ocupacion Por Referencia, correo Por Referencia, edad Por Referencia, contsocio Por Referencia)
	//Descomentar para ingresar los valores
//	mostrar("Ingrese nombre del socio")
//	Leer nombre;
//	mostrar("Ingrese apellido del socio")
//	Leer apellido;
//	mostrar ("Ingrese edad del socio")
//	Leer edad;
//	mostrar("Ingrese ocupacion del socio")
//	Leer ocupacion
//	mostrar("Ingrese correo del socio")
//	Leer correo
	
	
	CodigoDeSocio(nombre,apellido, codigodesocioC,contsocio);
	VerificacionDeCorreo(correo)
	mostrar("Datos del nuevo socio:")
    mostrar("Nombre: " + nombre)
    mostrar("Apellido: " + apellido)
    mostrar("Edad: " + ConvertirATexto(edad));
    mostrar("Ocupacion: " + ocupacion)
    mostrar("Correo: " + correo)
    mostrar("Codigo de Socio: " + codigodesocioC)
	
FinSubAlgoritmo

SubAlgoritmo  CodigoDeSocio(nombre, apellido, codigodesocioC Por Referencia, contsocioC Por Referencia)
	nombre = Mayusculas(nombre);
	apellido = Mayusculas(apellido);
	codigodesocioC =  Subcadena(apellido, 1,1) + Subcadena(apellido, 2,2) + Subcadena(apellido, 3,3) + "_" + Subcadena(nombre, 1,1) + Subcadena(nombre, 2,2)+ "_";
	contsocioC = contsocioC + 1;
	
	Si (contsocioC < 10)
		codigoDesocioC = codigoDesocioC + "000" + ConvertirATexto(contsocioC);
	SiNo
		Si (contsocioC < 100)
			codigoDesocioC = codigoDesocioC + "00" + ConvertirATexto(contsocioC);
		SiNo
			Si(contsocioC < 1000)
				codigoDesocioC = codigoDesocioC + "0" + ConvertirATexto(contsocioC);
			SiNo
				Si (contsocioC < 10000)
					codigoDesocioC = codigoDesocioC + ConvertirATexto(contsocioC);
				FinSi
			FinSi
		FinSi
	FinSi
	
FinSubAlgoritmo

SubAlgoritmo VerificacionDeCorreo(correo Por Referencia)
	verificacion = Falso;
	cantidaddearroba = 0;
	arroba = 0;
	punto = 0;
	tope = Longitud(correo);
	Escribir tope
	Repetir
		Para i = 1 Hasta tope Hacer
	
			Si(Subcadena(correo, i,i) = ".")
				Si (cantidaddearroba = 1) Entonces
					punto = punto + 1;
					SiNo
						punto = punto + 2
					FinSi
				FinSi
				Si Subcadena(correo,i,i) = "@" Entonces
					cantidaddearroba = cantidaddearroba + 1
			FinSi
		FinPara
	
		Si cantidaddearroba = 1 y punto = 1 Entonces
			verificacion = Verdadero
			SiNo
				mostrar("Correo incorrecto, re-ingresar")
				Leer correo
				punto = 0;
				cantidaddearroba = 0;
		FinSi
Hasta Que verificacion;
	
FinSubAlgoritmo

SubAlgoritmo ProcesarPrestamo (codigodesocioC, isbnLibro Por Referencia,codigoLibro Por Referencia, fecha, acumMultas Por Referencia,acumu_press Por Referencia, FiccionStock Por Referencia, TecnicoStock Por Referencia, InfantilStock Por Referencia, RefStock Por Referencia,acumCatFic Por Referencia, acumCatRef Por Referencia,acumCatTec Por Referencia,acumCatInf Por Referencia)
	
	codigodesocioC = Mayusculas(codigodesocioC)
	Dimension abecedario[26]
	
	abecedario[1] <- 'A'
	abecedario[2] <- 'B'
	abecedario[3] <- 'C'
	abecedario[4] <- 'D'
	abecedario[5] <- 'E'
	abecedario[6] <- 'F'
	abecedario[7] <- 'G'
	abecedario[8] <- 'H'
	abecedario[9] <- 'I'
	abecedario[10] <- 'J'
	abecedario[11] <- 'K'
	abecedario[12] <- 'L'
	abecedario[13] <- 'M'
	abecedario[14] <- 'N'
	abecedario[15] <- 'O'
	abecedario[16] <- 'P'
	abecedario[17] <- 'Q'
	abecedario[18] <- 'R'
	abecedario[19] <- 'S'
	abecedario[20] <- 'T'
	abecedario[21] <- 'U'
	abecedario[22] <- 'V'
	abecedario[23] <- 'W'
	abecedario[24] <- 'X'
	abecedario[25] <- 'Y'
	abecedario[26] <- 'Z'
	
	Dimension numeros[10]
	
	numeros[1] <- '0'
	numeros[2] <- '1'
	numeros[3] <- '2'
	numeros[4] <- '3'
	numeros[5] <- '4'
	numeros[6] <- '5'
	numeros[7] <- '6'
	numeros[8] <- '7'
	numeros[9] <- '8'
	numeros[10] <- '9'
	
	Repetir
		contMayus = 0;
		contNum = 0;
		tiene12Car = falso;
		tiene2Guion = falso;
		esValido = falso;
		Si (Longitud(codigodesocioC) = 11)
			tiene12Car = Verdadero;
		FinSi
		Si (Subcadena(codigodesocioC, 4, 4) = "_" y Subcadena(codigodesocioC, 7,7) = "_")
			tiene2Guion = Verdadero;
		FinSi
		
		Para i<- 1 hasta 3 Hacer
			Para j = 1 hasta 26 Hacer
				Si(Subcadena(codigodesocioC, i,i) = abecedario[j])
					contMayus = contMayus + 1;
				FinSi
			FinPara
		FinPara
		
		Para i<- 5 hasta 6 Hacer
			Para j = 1 hasta 26 Hacer
				Si(Subcadena(codigodesocioC, i,i) = abecedario[j])
					contMayus = contMayus + 1;
				FinSi
			FinPara
		FinPara
		
		Para i <- 8 hasta 11 Hacer
			Para j = 1 hasta 10 Hacer
				Si (Subcadena(codigodesocioC, i, i) = numeros[j] )
					contNum = contNum + 1;
				FinSi
			FinPara
		FinPara
		
		Si (contMayus = 5 y contNum = 4 y tiene12Car y tiene2Guion) Entonces
			esValido = Verdadero;
		FinSi

		Si (esValido = Falso)
			Escribir "codigo de socio incorrecto, re-ingresar";
			Leer codigodesocioC
		FinSi
	
	Hasta Que esValido = Verdadero;
	
	Si (acumu_press >= 3)
		Mostrar("Tiene 3 o más libros prestado, no puede pedir más")
		esValido = falso;
	FinSi
	
	Si (acumMultas >= 1) Entonces
		Mostrar("Usted tiene multas pendientes no puede pedir más libros")
		esValido = falso;
	FinSi

	Si (esValido)
		
		Repetir
			Mostrar("Ingrese código del libro: ")
			Leer codigoLibro
			codigoLibro = Mayusculas(codigoLibro);
			
			Segun codigoLibro
				"INF": 
					acumCatInf = acumCatInf + 1;
				"FIC":
					acumCatFic = acumCatFic + 1;
				"REF":
					acumCatRef = acumCatRef + 1;
				"TEC":
					acumCatTec = acumCatTec + 1;
			FinSegun
			
		Hasta Que codigoLibro = "INF" O codigoLibro = "FIC" O codigoLibro = "REF" O codigoLibro = "TEC"
		
		
		Repetir
			Mostrar("Ingrese el ISBN del libro (sólo numeros): ")
			Leer isbnLibro;
			esNumerico = verdadero
			contNum = 0;
			Para i <- 1 hasta Longitud(isbnLibro) Hacer
				Para j = 1 hasta 10 Hacer
					Si (Subcadena(isbnLibro, i, i) = numeros[j] )
						contNum = contNum + 1;
					FinSi
				FinPara
			FinPara
            si contNum = Longitud(isbnLibro) entonces
                esNumerico = Verdadero;
			SiNo
				Mostrar("ISBN inválido. Intente nuevamente")
				esNumerico = Falso;
            FinSi
		Hasta Que esNumerico = Verdadero;
			Stock(FiccionStock, TecnicoStock, InfantilStock, RefStock, 1, codigoLibro);
			//año, mes y dia deberian ser entradas, pero no vamos a esperar un día para ver si el programa funciona.
			año = Trunc(FechaActual()/10000)
			mes = Trunc(((FechaActual() - año*10000)/100))
			dia = Trunc(FechaActual() - (año*10000 + mes*100))
			Mostrar ("-------Préstamo registrado-------")
			Mostrar ("Código de socio: " + codigodeSocioC)
			Mostrar ("Código del libro solicitado: " + codigoLibro)
			Mostrar ("ISBN del libro solicitado: " + isbnLibro);
			mostrar ("Fecha del préstamo: " + ConvertirATexto(año) + "/" + ConvertirATexto(mes) + "/"+ ConvertirATexto(dia))
			acumu_pres <-- acumu_pres + 1
		FinSi
FinSubAlgoritmo

	
SubAlgoritmo Stock(FiccionStock Por Referencia, TecnicoStock Por Referencia, InfantilStock Por Referencia, RefStock Por Referencia,opcionC, codigo)
	Si (opcionC = 1)
		Segun codigo
			"FIC":  Si (FiccionStock <> 0) entonces
					FiccionStock <- FiccionStock - 1
                Sino 
					Mostrar("No hay stock")
                FinSi
			"TEC": Si (TecnicoStock <> 0) entonces
					TecnicoStock <- TecnicoStock - 1
                Sino 
					Mostrar("No hay stock")
                FinSi
			"INF": Si (InfantilStock <> 0) entonces
					InfantilStock <- InfantilStock - 1
                Sino 
					Mostrar("No hay stock")
                FinSi
			"REF": Si (RefStock <> 0) entonces
					RefStock <- RefStock - 1
                Sino
					mostrar("No hay stock")
                FinSi
			De Otro Modo:
				Mostrar("Codigo ingresado no valido")       
		FinSegun
	FinSi
	
	Si(opcionC = 2)
		Según (Codigo) hacer
			"FIC": FiccionStock <- FiccionStock + 1
			"TEC": TecnicoStock <- TecnicoStock + 1
			"INF": InfantilStock <- InfantilStock + 1
			"REF": RefStock <- RefStock + 1
			De Otro Modo: 
				Mostrar("El codigo ingresado es incorrecto")
		Fin Según
	FinSi
	
FinSubAlgoritmo

SubAlgoritmo ProcesarDevoluciones(ocupacion,codigo, dia,mes,año,acumMultas Por Referencia,FiccionStock Por Referencia,TecnicoStock Por Referencia,RefStock Por Referencia, totalMultasEstudiantes Por Referencia, totalMultasDocentes Por Referencia, totalMultasRegulares Por Referencia, totalMultas Por Referencia)
	lapsoDeDias <- dias_Transcurridos(año, mes, dia);
	Mostrar "Hoy es: " + ConvertirATexto(año) + "/" + ConvertirATexto(mes) + "/"+ ConvertirATexto(dia)
	Segun (codigo) Hacer
		"FIC":
			Stock(FiccionStock,TecnicoStock,InfantilStock, RefStock,2,"FIC");
			Si lapsoDeDias > 15 
				acumMultas = acumMultas + 1
				multa = 500 * lapsoDeDias
				Si lapsoDeDias > 18 Entonces
					multa = 800 * lapsoDeDias
					Si lapsoDeDias > 25
						multa = 1200 * lapsoDeDias
					FinSi
				FinSi
			FinSi
			Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + " dias del día de prestamo" 
			calcularMulta(Codigo,totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, totalMultas,multa, ocupacion)
		"TEC":
			Stock(FiccionStock,TecnicoStock,InfantilStock, RefStock,2,"TEC");
			
			Si lapsoDeDias > 7 
				acumMultas = acumMultas + 1
				multa = 500 * lapsoDeDias
				Si lapsoDeDias > 10 Entonces
					multa = 800 * lapsoDeDias
					Si lapsoDeDias > 17
						multa = 1200 * lapsoDeDias
					FinSi
				FinSi
			FinSi
			Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + "del día de prestamo" 
			calcularMulta(Codigo,totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, totalMultas,multa, ocupacion)
		"INF":
			Stock(FiccionStock,TecnicoStock,InfantilStock, RefStock,2,"INF");
			
			Si lapsoDeDias > 21 
				acumMultas = acumMultas + 1
				multa = 500 * lapsoDeDias
				Si lapsoDeDias > 24 Entonces
					multa = 800 * lapsoDeDias
					Si lapsoDeDias > 31
						multa = 1200 * lapsoDeDias
					FinSi
				FinSi
			FinSi
			Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + "del día de prestamo" 
			calcularMulta(Codigo,totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, totalMultas,multa, ocupacion)
		"REF":
			Stock(FiccionStock,TecnicoStock,InfantilStock, RefStock,2,"REF");
			
			Si lapsoDeDias > 0 
				acumMultas = acumMultas + 1
				multa = 500 * lapsoDeDias
				Si lapsoDeDias > 3 Entonces
					multa = 800 * lapsoDeDias
					Si lapsoDeDias > 7
						multa = 1200 * lapsoDeDias
					FinSi
				FinSi
			FinSi
			Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + "del día de prestamo" 
			calcularMulta(Codigo,totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, totalMultas,multa, ocupacion)
	FinSegun
	
FinSubAlgoritmo

SubAlgoritmo calcularMulta(Codigo, totalMultasEstudiantes Por Referencia, totalMultasDocentes Por Referencia, totalMultasRegulares Por Referencia, totalMultas Por Referencia, multa, ocupacion)
	multaDefault = multa
	multaEstudiante = (50/100)*multa
	multaDocente = (70/100)*multa
	
	Segun (ocupacion) hacer
		"Estudiante": 
			mostrar("Tiene una multa de ," + ConvertirATexto(multaEstudiante))
			totalMultasEstudiantes = totalMultasEstudiantes + multaEstudiante;
		"Docente": mostrar("Tiene una multa de ," +  ConvertirATexto(multaDocente))
			totalMultasDocentes = totalMultasDocentes + multaDocente;
		"Médico":
			mostrar("Tiene una multa de " + ConvertirATexto(multaDefault))
			totalMultasRegulares = totalMultasRegulares + multaDefault;
	FinSegún
	totalMultas = totalMultasEstudiantes + totalMultasDocentes + totalMultasRegulares; 
	
FinSubAlgoritmo

SubAlgoritmo generarComprobante (codigodesocioC, nombre, apellido, fecha, dia, mes, año, opcionC)
	digitos = "";
	cadenaValida = Verdadero;
	contDigitos = 0;
	Dimension numeros[10]
	
	numeros[1] <- '0'
	numeros[2] <- '1'
	numeros[3] <- '2'
	numeros[4] <- '3'
	numeros[5] <- '4'
	numeros[6] <- '5'
	numeros[7] <- '6'
	numeros[8] <- '7'
	numeros[9] <- '8'
	numeros[10] <- '9'
	
	Mientras cadenaValida
		Escribir "Ingrese un número de 4 digitos"
		Leer digitos
		Para i<-1 Hasta Longitud(digitos) Hacer
			Para j<-1 hasta 10 Hacer
				Si (Subcadena(digitos,i,i) = numeros[j])
					contDigitos = contDigitos + 1
				FinSi
			FinPara
		FinPara
		
		Si (contDigitos = 4)
			cadenaValida = falso;
		SiNo
			contDigitos = 0;
		FinSi
		
	FinMientras
	añoC = ConvertirATexto(año)
	mesC = ConvertirATexto(mes);
	diaC = ConvertirATexto(dia);
	

	Si (mes < 10)
		mesC = concatenar('0' ,mesC)
	FinSi
	
	Si dia < 10
		diaC = Concatenar('0', diaC)
	FinSi
	
	comprobante = Concatenar(comprobante, añoC)
	comprobante = Concatenar(comprobante, mesC)
	comprobante = Concatenar(comprobante, diaC)
	comprobante = Concatenar(comprobante, digitos)
	Escribir codigodesocioC + " " + nombre + " " + apellido +" " + añoC+ "/" + mesC "/" + diaC
	Escribir comprobante
	
	Segun opcion
		1: 
			Escribir "Se está haciendo un socio"
		2: 
			Escribir "Se procesó un prestamo"
		3: 
			Escribir "Se proceso una devolución"
	FinSegun
	
	hora = Trunc(HoraActual()/10000)
	minuto = Trunc(((HoraActual() - hora*10000)/100))
	second = HoraActual() - (Hora * 10000 + minuto * 100)
	
	horaC = ConvertirATexto(hora)
	minutoC = ConvertirATexto(minuto)
	segundoC = ConvertirATexto(second)
	Si hora < 10
		horaC = Concatenar("0", horaC)
	FinSi
	Si minuto < 10
		minutoC = Concatenar( "0", minutoC)
	FinSi
	Si second < 10
		segundoC = Concatenar("0", segundoC)
	FinSi
	
	Escribir "Hora de la operación" + horaC + ":" + minutoC + ":" + segundoC
FinSubAlgoritmo

SubAlgoritmo reporteEstadistico
	
FinSubAlgoritmo

//Utilidad para obtener la diferencia de dias
Funcion  dias <- dias_Transcurridos(año, mes, dia)
	// dias acumulador por cada mes
	enero<-31; febrero<-59; marzo<-90; abril<-120; mayo<-151; junio<-181; julio<-212; agosto<-243; septiembre<-273; octubre<-304; noviembre<-334; diciembre<-365;
	
	//Ingresar fecha inical
	an_Inicial = Trunc(FechaActual()/10000)
	mes_Inicial = Trunc(((FechaActual() - an_Inicial*10000)/100))
	dia_Inicial = Trunc(FechaActual() - (an_Inicial*10000 + mes_Inicial*100))

	//Ingresar fecha Final
	
	an_Final = año;
	mes_Final = mes;
	dia_Final=dia;
	
	//Días hasta 31 de diciembre del año inicial
	
	// Paso uno, verificar si el año es bisiesto
	si (an_Inicial/4) = 0 entonces dias_AnInc<-366
	Sino dias_AnInc<-365
	FinSi
	
	si mes_Inicial=1 entonces dias_Hastafechainc <- dia_Inicial
	Sino 
		Si mes_Inicial=2 entonces dias_Hastafechainc <- enero + dia_Inicial
		SiNo
			Si mes_Inicial=3 entonces dias_Hastafechainc <- febrero + dia_Inicial
			SiNo
				Si mes_Inicial=4 entonces dias_Hastafechainc <- marzo + dia_Inicial
				SiNo
					Si mes_Inicial=5 entonces dias_Hastafechainc <- abril + dia_Inicial
					SiNo
						Si mes_Inicial=6 entonces dias_Hastafechainc <- mayo + dia_Inicial
						SiNo
							Si mes_Inicial=7 entonces dias_Hastafechainc <- junio + dia_Inicial
							SiNo
								Si mes_Inicial=8 entonces dias_Hastafechainc <- julio + dia_Inicial
								SiNo
									Si mes_Inicial=9 entonces dias_Hastafechainc <- agosto + dia_Inicial
									SiNo
										Si mes_Inicial=10 entonces dias_Hastafechainc <- septiembre + dia_Inicial
										SiNo
											Si mes_Inicial=11 entonces dias_Hastafechainc <- octubre + dia_Inicial
											Sino 
												Si mes_Inicial=12 entonces dias_Hastafechainc <- noviembre + dia_Inicial
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi;
	FinSi;
	
	
	
	Si (an_Inicial/4) = 0 entonces 
		dias_Hastafechainc<-dias_Hastafechainc+1
	Sino 
		dias_Hastafechainc<-dias_Hastafechainc+0
	FinSi
	
	dias_TotalesAnInc <- dias_AnInc - dias_Hastafechainc;
	
	total_Anfinal<- an_Final - (an_Inicial+1);
	
	si mes_Final=1 entonces dias_Hastamesfinal <- dia_Final
	Sino 
		Si mes_Final=2 entonces dias_Hastamesfinal <- enero + dia_Final
		SiNo
			Si mes_Final=3 entonces dias_Hastamesfinal <- febrero + dia_Final
			SiNo
				Si mes_Final=4 entonces dias_Hastamesfinal <- marzo + dia_Final
				SiNo
					Si mes_Final=5 entonces dias_Hastamesfinal <- abril + dia_Final
					SiNo
						Si mes_Final=6 entonces dias_Hastamesfinal <- mayo + dia_Final
						SiNo
							Si mes_Final=7 entonces dias_Hastamesfinal <- junio + dia_Final
							SiNo
								Si mes_Final=8 entonces dias_Hastamesfinal <- julio + dia_Final
								SiNo
									Si mes_Final=9 entonces dias_Hastamesfinal <- agosto + dia_Final
									SiNo
										Si mes_Final=10 entonces dias_Hastamesfinal <- septiembre + dia_Final
										SiNo
											Si mes_Final=11 entonces dias_Hastamesfinal <- octubre + dia_Final
											Sino 
												Si mes_Final=12 entonces dias_Hastamesfinal <- noviembre + dia_Final
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi;
	FinSi;
	
	dias_Totalesfinales <- (total_Anfinal*365)+dias_Hastamesfinal;
	
	ajuste_Diasbis <- Trunc(total_Anfinal / 4); // Para redondear el número de días bisiestos y poderlos sumar con un tipo de variable Entero
	
	dias_Totalesfinales <- dias_Totalesfinales + ajuste_Diasbis
	
	// Calculo final de días transcurridos
	
	//Esto son los dias que me interesan
	dias = dias_TotalesAnInc + dias_Totalesfinales;
Fin Funcion



	