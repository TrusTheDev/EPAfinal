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
	diasDeatraso = 0;
	TecnicoStock = -1
	FiccionStock = -1;
	InfantilStock = -1;
	RefStock = -1;
	codigoLibro = ""
	codigodesocioC = ""
	
	//Relleno con valores para que no me jodan en la depuracion comentar en la exposici�n y desdecumentar en registrar socio
//	TecnicoStock = 5;
//	FiccionStock = 5;
//	InfantilStock = 5;
//	RefStock = 5;
//	nombre = "Ivan";
//	apellido = "Viegas";
//	edad = 18;
//	ocupacion = "Estudiante";
//	correo = "ivanbordeira2015@hotmail.com";
//	codigodesocioC = "VIE_IV_0001";
	
	
	//Jugar con estos n�meros para reportes estadisticos
	contsocioC = 0;
	totalMultasEstudiantes = 0;
	totalMultasDocentes = 0;
	totalMultasRegulares = 0;
	socioSinAtraso = 0;
	totalMultas = 0;
	acumMultas = 0;
	acumCatRef = 0;
	acumCatTec = 0;
	acumCatInf = 0;
	acumCatFic = 0;
	diasDeatrasoFic = 0;
	diasDeatrasoInf = 0;
	diasDeatrasoRef = 0;
	diasDeatrasoTec = 0;
	contMulta = 0
	//Seria la fecha de ma�ana
	a�o = 2025
	mes = 7
	dia = 11
	
//	//Datos de prueba para reportes estadisticos
//	contsocioC = 100;
//	//dinero recaudado discriminado por tipo, tecnicamente est�n mal porque hay porlomenos 100 socios, pero funcionan para probar.
//	totalMultasEstudiantes = 4500;
//	totalMultasDocentes = 9000;
//	totalMultasRegulares = 800;
//	//Total recaudado
//	contMulta = 0
//	socioSinAtraso = 50;
//	//totalMultas es la cantidad de multas
//	totalMultas = 0;
//	//cantidad de multas por persona, dejar en 0
//	acumMultas = 0;
//	//acum cat son los libros prestados por categoria
//	TecnicoStock = 50;
//	FiccionStock = 50;
//	InfantilStock = 50;
//	RefStock = 50;
//	acumCatRef = 10;
//	acumCatTec = 25;
//	acumCatInf = 40;
//	acumCatFic = 50;
//	diasDeatrasoFic = 35;
//	diasDeatrasoInf = 47;
//	diasDeatrasoRef = 15;
//	diasDeatrasoTec = 7;
	
	
	
	// Dejarlo descomentado SOLO en �so real
	//a�o = Trunc(FechaActual()/10000)
	//mes = Trunc(((FechaActual() - a�o*10000)/100))
	//dia = Trunc(FechaActual() - (a�o*10000 + mes*100))
	opcionP = -1
	//acumulado de prestado por usuario ingresado, no tocar
	acumu_press = 0;

	
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
	Borrar Pantalla
	Mientras opcionP <> 0 Hacer
		
		Escribir " _____                                                                                     _____ "
		Escribir "( ___ )                                                                                   ( ___ )"
		Escribir " |   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   | "
		Escribir " |   |  _________  _______   ________  ___  ___  ________  ________  ________ _________    |   | "
		Escribir " |   | |\___   ___\\  ___ \ |\   ____\|\  \|\  \|\   ____\|\   __  \|\  _____\\___   ___\  |   | "
		Escribir " |   | \|___ \  \_\ \   __/|\ \  \___|\ \  \\\  \ \  \___|\ \  \|\  \ \  \__/\|___ \  \_|  |   | "
		Escribir " |   |      \ \  \ \ \  \_|/_\ \  \    \ \   __  \ \_____  \ \  \\\  \ \   __\    \ \  \   |   | "
		Escribir " |   |       \ \  \ \ \  \_|\ \ \  \____\ \  \ \  \|____|\  \ \  \\\  \ \  \_|     \ \  \  |   | "
		Escribir " |   |        \ \__\ \ \_______\ \_______\ \__\ \__\____\_\  \ \_______\ \__\       \ \__\ |   | "
		Escribir " |   |         \|__|  \|_______|\|_______|\|__|\|__|\_________\|_______|\|__|        \|__| |   | "
		Escribir " |   |                                             \|_________|                            |   | "
		Escribir " |___|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|___| "
		Escribir "(_____)                                                                                   (_____)" 

		Mostrar "Bienvenido al gesti�n de pr�stamos de libros de la biblioteca municipal Dr.Ricardo Rojas"
		Mostrar "Introduzca una de las siguientes opciones:"
		Mostrar "0: salir."
		Mostrar "1: Registrar socios."
		Mostrar "2: Prestar libros."
		Mostrar "3: Para devolver libros."
		Mostrar "4: Para generar reportes estadisticos."
		Leer opcionP
		Borrar Pantalla
		Segun opcionP Hacer
			0: 
			1: 
				acumMultas = 0;
				NuevoSocioBiblioteca(nombre, apellido, codigodesocioC,ocupacion,correo,edad,contsocioC);
				generarComprobante(codigodesocioC, nombre, apellido, fecha, dia, mes, a�o, opcionP);
			2:
				procesarPrestamo(codigodesocioC, isbnLibro,codigoLibro, fecha, acumMultas,acumu_press, FiccionStock, TecnicoStock, InfantilStock, RefStock, acumCatFic,acumCatRef,acumCatTec, acumCatInf);
				generarComprobante(codigodesocioC, nombre, apellido, fecha, dia, mes, a�o, opcionP);
			3:
				ProcesarDevoluciones(contMulta, socioSinAtraso,ocupacion,codigoLibro,dia,mes,a�o, acumMultas, FiccionStock, TecnicoStock, RefStock, totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, totalMultas);
				generarComprobante(codigodesocioC, nombre, apellido, fecha, dia, mes, a�o, opcionP);
				Escribir "socios sin atrasos:" + ConvertirATexto(socioSinAtraso)
			4:
				reporteEstadistico(contsocioC,TecnicoStock,FiccionStock,InfantilStock,RefStock,totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, socioSinAtraso, totalMultas, contMulta, acumCatRef, acumCatTec, acumCatInf, acumCatFic, diasDeatrasoFic, diasDeatrasoInf, diasDeatrasoRef, diasDeatrasoTec)
				generarComprobante(codigodesocioC, nombre, apellido, fecha, dia, mes, a�o, opcionP);
			De Otro Modo:
				Escribir  "Opcion invalida"
		Fin Segun
	FinMientras
	
FinAlgoritmo

SubAlgoritmo NuevoSocioBiblioteca(nombre Por Referencia,apellido Por Referencia, codigodesocioC Por Referencia, ocupacion Por Referencia, correo Por Referencia, edad Por Referencia, contsocioC Por Referencia)
	//Descomentar para ingresar los valores
	Dimension numeros[27]
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
		esValido = Verdadero
		
		mostrar("Ingrese nombre del socio")
		Leer nombre;
		nombre = Mayusculas(nombre)
		Para i <- 1 Hasta Longitud(nombre) Hacer
			Para j <- 1 Hasta 10 Hacer
				Si Subcadena(nombre,i,i) = numeros[j]
					esValido = falso
				FinSi
			FinPara
		FinPara
		
		mostrar("Ingrese apellido del socio")
		Leer apellido;
		apellido = Mayusculas(apellido)
		Para i <- 1 Hasta Longitud(apellido) Hacer
			Para j <- 1 Hasta 10 Hacer
				Si Subcadena(apellido,i,i) = numeros[j]
					esValido = falso
				FinSi
			FinPara
		FinPara
		Si Longitud(appelido) <= 3 y Longitud(nombre) <= 2
			esvalido = !esvalido
		FinSi
		Si !esValido Entonces
			Escribir "Nombre o apellido invalido, re-ingresar"
			
		FinSi
	Hasta Que esValido 
	mostrar ("Ingrese edad del socio")
	Leer edad;
	mostrar("Ingrese ocupacion del socio")
	Leer ocupacion
	mostrar("Ingrese correo del socio")
	Leer correo
	
	
	CodigoDeSocio(nombre,apellido, codigodesocioC,contsocioC);
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
	Si codigodesocioC <> "" Entonces
		codigodesocioC = Mayusculas(codigodesocioC)
		Dimension abecedario[27]
		
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
		abecedario[27] <- ' '
		
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
				Para j = 1 hasta 27 Hacer
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
			Mostrar("Tiene 3 o m�s libros prestado, no puede pedir m�s")
			esValido = falso;
		FinSi
		
		Si (acumMultas >= 1) Entonces
			Mostrar("Usted tiene multas pendientes no puede pedir m�s libros")
			esValido = falso;
		FinSi
		
		Si (esValido)
			
			Repetir
				Mostrar("Ingrese c�digo del libro: ")
				Leer codigoLibro
				codigoLibro = Mayusculas(codigoLibro);
				
				Segun codigoLibro
					"INF": 
						Si InfantilStock <> 0
							acumCatInf = acumCatInf + 1;
						SiNo
							Escribir "No hay stock"
							esValido = falso;
						FinSi
					"FIC":
						Si FiccionStock <> 0
							acumCatFic = acumCatFic + 1;
						SiNo
							Escribir "No hay stock"
							esValido = falso;
						FinSi
					"REF":
						Si RefStock <> 0
							acumCatRef = acumCatRef + 1;
						SiNo
							Escribir "No hay stock"
							esValido = falso;
						FinSi
						
					"TEC":
						Si TecnicoStock <> 0
							acumCatTec = acumCatTec + 1;
						SiNo
							Escribir "No hay stock"
							esValido = falso;
						FinSi
						
				FinSegun
				
			Hasta Que codigoLibro = "INF" O codigoLibro = "FIC" O codigoLibro = "REF" O codigoLibro = "TEC"
			
			
			Si (esValido)
				Repetir
					Mostrar("Ingrese el ISBN del libro (s�lo numeros): ")
					Leer isbnLibro;
					esNumerico = verdadero
					contNum = 0;
					Para i <- 1 hasta 12 Hacer
						Para j = 1 hasta 10 Hacer
							Si (Subcadena(isbnLibro, i, i) = numeros[j] )
								contNum = contNum + 1;
							FinSi
						FinPara
					FinPara
					si contNum = 12 entonces
						esNumerico = Verdadero;
					SiNo
						Mostrar("ISBN inv�lido. Intente nuevamente")
						esNumerico = Falso;
					FinSi
				Hasta Que esNumerico = Verdadero;
				Stock(FiccionStock, TecnicoStock, InfantilStock, RefStock, 1, codigoLibro);
				//a�o, mes y dia deberian ser entradas, pero no vamos a esperar un d�a para ver si el programa funciona.
				a�o = Trunc(FechaActual()/10000)
				mes = Trunc(((FechaActual() - a�o*10000)/100))
				dia = Trunc(FechaActual() - (a�o*10000 + mes*100))
				Mostrar ("-------Pr�stamo registrado-------")
				Mostrar ("C�digo de socio: " + codigodeSocioC)
				Mostrar ("C�digo del libro solicitado: " + codigoLibro)
				Mostrar ("ISBN del libro solicitado: " + isbnLibro);
				mostrar ("Fecha del pr�stamo: " + ConvertirATexto(a�o) + "/" + ConvertirATexto(mes) + "/"+ ConvertirATexto(dia))
				acumu_pres <-- acumu_pres + 1
			FinSi
		FinSi
		
	SiNo
		Escribir "Debe registrarse primero"
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
		Seg�n (Codigo) hacer
	"FIC": FiccionStock <- FiccionStock + 1
	"TEC": TecnicoStock <- TecnicoStock + 1
	"INF": InfantilStock <- InfantilStock + 1
	"REF": RefStock <- RefStock + 1
	De Otro Modo: 
		Mostrar("El codigo ingresado es incorrecto")
Fin Seg�n
FinSi

FinSubAlgoritmo

SubAlgoritmo ProcesarDevoluciones(contMulta Por Referencia,socioSinAtraso Por Referencia,ocupacion,codigo Por Referencia, dia,mes,a�o,acumMultas Por Referencia,FiccionStock Por Referencia,TecnicoStock Por Referencia,RefStock Por Referencia, totalMultasEstudiantes Por Referencia, totalMultasDocentes Por Referencia, totalMultasRegulares Por Referencia, totalMultas Por Referencia)
	Si codigo <> "" Entonces
		
		
		lapsoDeDias <- dias_Transcurridos(a�o, mes, dia);
		Mostrar "Hoy es: " + ConvertirATexto(a�o) + "/" + ConvertirATexto(mes) + "/"+ ConvertirATexto(dia)
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
				SiNo
					socioSinAtraso = socioSinAtraso + 1
				FinSi
				Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + " dia/s del d�a de prestamo" 
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
				SiNo
					socioSinAtraso = socioSinAtraso + 1
				FinSi
				Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + " dia/s del d�a de prestamo" 
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
				SiNo
					socioSinAtraso = socioSinAtraso + 1
				FinSi
				Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + " dia/s del d�a de prestamo" 
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
				SiNo
					socioSinAtraso = socioSinAtraso + 1
				FinSi
				Escribir "Entrego el libro a " + ConvertirATexto(lapsoDeDias) + " dia/s del d�a de prestamo" 
				calcularMulta(Codigo,totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, totalMultas,multa, ocupacion)
		FinSegun
		contMulta = contMulta + acumMultas
		codigo = ""
	SiNo
		Escribir "Debe pedir un libro"
	FinSi
	
	
FinSubAlgoritmo

SubAlgoritmo calcularMulta(Codigo, totalMultasEstudiantes Por Referencia, totalMultasDocentes Por Referencia, totalMultasRegulares Por Referencia, totalMultas Por Referencia, multa, ocupacion)
	multaDefault = multa
	multaEstudiante = (50/100)*multa
	multaDocente = (70/100)*multa
	
	Segun (ocupacion) hacer
		"Estudiante": 
			mostrar("Tiene una multa de " + ConvertirATexto(multaEstudiante))
			totalMultasEstudiantes = totalMultasEstudiantes + multaEstudiante;
		"Docente": mostrar("Tiene una multa de " +  ConvertirATexto(multaDocente))
			totalMultasDocentes = totalMultasDocentes + multaDocente;
		De Otro Modo:
			mostrar("Tiene una multa de " + ConvertirATexto(multaDefault))
			totalMultasRegulares = totalMultasRegulares + multaDefault;
	FinSeg�n
	totalMultas = totalMultasEstudiantes + totalMultasDocentes + totalMultasRegulares; 
	
FinSubAlgoritmo

SubAlgoritmo generarComprobante (codigodesocioC, nombre, apellido, fecha, dia, mes, a�o, opcionC)
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
		Escribir "Ingrese un n�mero de 4 digitos"
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
	a�oC = ConvertirATexto(a�o)
	mesC = ConvertirATexto(mes);
	diaC = ConvertirATexto(dia);
	
	
	Si (mes < 10)
		mesC = concatenar('0' ,mesC)
	FinSi
	
	Si dia < 10
		diaC = Concatenar('0', diaC)
	FinSi
	
	comprobante = Concatenar(comprobante, a�oC)
	comprobante = Concatenar(comprobante, mesC)
	comprobante = Concatenar(comprobante, diaC)
	comprobante = Concatenar(comprobante, digitos)
	Escribir codigodesocioC + " " + nombre + " " + apellido +" " + a�oC+ "/" + mesC "/" + diaC
	Escribir comprobante
	Segun opcionC
		1: 
			Escribir "Se est� haciendo un socio"
		2: 
			Escribir "Se proces� un prestamo"
		3: 
			Escribir "Se proceso una devoluci�n"
		4: 
			Escribir "Se generaron reportes estadisticos"
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
	
	Escribir "Hora de la operaci�n: " + horaC + ":" + minutoC + ":" + segundoC
FinSubAlgoritmo

SubAlgoritmo reporteEstadistico(contsocioC,TecnicoStock,FiccionStock,InfantilStock,RefStock,totalMultasEstudiantes, totalMultasDocentes, totalMultasRegulares, socioSinAtraso, contMulta, contMulta, acumCatRef, acumCatTec, acumCatInf, acumCatFic, diasDeatrasoFic, diasDeatrasoInf, diasDeatrasoRef, diasDeatrasoTec)
	
	Si contsocioC > 0 Y socioSinAtraso > 0 Y acumCatRef > 0 Y acumCatTec > 0 Y acumCatInf > 0 Y acumCatFic > 0 Y diasDeatrasoFic > 0 Y diasDeatrasoInf > 0 Y diasDeatrasoRef > 0 Y diasDeatrasoTec > 0  Entonces
		porcentage_TecnicoStock = (acumCatTec / TecnicoStock) * 100
		porcentage_FiccionStock = (acumCatFic / FiccionStock) * 100
		porcentage_InfantilStock = (acumCatInf / InfantilStock) * 100
		porcentage_RefStock = (acumCatRef / RefStock) * 100
		
		Escribir"porcentage de libros prestados de tematica tecnica son; ", porcentage_TecnicoStock, "%"
		Escribir "porcentage de libros prestados de tematica ficcion son; ",porcentage_FiccionStock, "%"
		Escribir "porcentage de libros prestados de tematica infantil son; ",porcentage_InfantilStock, "%"
		Escribir"porcentage de libros prestados de tematica de referencia son; ",porcentage_RefStock, "%"
		Escribir "La cantidad de socios es; ", contsocioC
		Promedio_dias_atraso_ficc = (diasDeatrasoFic / acumCatFic)
		Promedio_dias_atraso_inf = (diasDeatrasoInf / acumCatInf)
		Promedio_dias_atraso_ref = (diasDeatrasoRef / acumCatRef)
		Promedio_dias_atraso_tec = (diasDeatrasoTec / acumCatTec)
		Escribir "Promedio de los dias de atraso de la categoria ficcion son; ",Promedio_dias_atraso_ficc
		Escribir "Promedio de los dias de atraso de la categoria infantil son; ",Promedio_dias_atraso_inf
		Escribir "Promedio de los dias de atraso de la categoria referencia son; ",Promedio_dias_atraso_ref
		Escribir "Promedio de los dias de atraso de la categoria tecnico son; ",Promedio_dias_atraso_tec
		
		Escribir "Recaudaci�n por tipo de socio: "
		Escribir "- Estudiantes: $", totalMultasEstudiantes
		Escribir "- Docentes: $", totalMultasDocentes
		Escribir "- Regulares: $", totalMultasRegulares
		totalMultas = (totalMultasEstudiantes + totalMultasDocentes + totalMultasRegulares)
		Escribir "Total recaudado: $", totalMultas
		
		Si socioSinAtraso > 0 Entonces
			
			SinAtrasos = (socioSinAtraso / contsocioC) * 100
			
			Escribir "Porcentaje de socios sin atrasos: ", SinAtrasos, "%"
			
		SiNo
			Mostrar("No hay socios con atrasos")
		FinSi
		
	SiNo
		Escribir "No hat datos suficientes como para realizar una estadistica"
	FinSi
	
FinSubAlgoritmo

//Utilidad para obtener la diferencia de dias
Funcion  dias <- dias_Transcurridos(a�o, mes, dia)
	// dias acumulador por cada mes
	enero<-31; febrero<-59; marzo<-90; abril<-120; mayo<-151; junio<-181; julio<-212; agosto<-243; septiembre<-273; octubre<-304; noviembre<-334; diciembre<-365;
	
	//Ingresar fecha inical
	an_Inicial = Trunc(FechaActual()/10000)
	mes_Inicial = Trunc(((FechaActual() - an_Inicial*10000)/100))
	dia_Inicial = Trunc(FechaActual() - (an_Inicial*10000 + mes_Inicial*100))
	
	//Ingresar fecha Final
	
	an_Final = a�o;
	mes_Final = mes;
	dia_Final=dia;
	
	//D�as hasta 31 de diciembre del a�o inicial
	
	// Paso uno, verificar si el a�o es bisiesto
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
	
	ajuste_Diasbis <- Trunc(total_Anfinal / 4); // Para redondear el n�mero de d�as bisiestos y poderlos sumar con un tipo de variable Entero
	
	dias_Totalesfinales <- dias_Totalesfinales + ajuste_Diasbis
	
	// Calculo final de d�as transcurridos
	
	//Esto son los dias que me interesan
	dias = dias_TotalesAnInc + dias_Totalesfinales;
Fin Funcion



	