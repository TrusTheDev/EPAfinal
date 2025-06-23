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
	acumu_press = 0;
	acumMultas = 0;
	acumCatRef = 0;
	acumCatTec = 0;
	acumCatInf = 0;
	acumCatFic = 0;
	
	
	contsocioC = 0;
	
	opcionP = -1
	
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
				generarComprobante();
			2:
				procesarPrestamo(codigodesocioC, isbnLibro,codigoLibro, fecha, acumMultas,acumu_press, FiccionStock, TecnicoStock, InfantilStock, RefStock, acumCatFic,acumCatRef,acumCatTec, acumCatInf);
				generarComprobante();
			3:
				ProcesarDevoluciones();
				generarComprobante();
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
	codigodesocioC = Subcadena(nombre, 1,1) + Subcadena(nombre, 2,2)+ Subcadena(nombre, 3,3) + "_" + Subcadena(apellido, 1,1) + Subcadena(apellido, 2,2) + Subcadena(apellido, 3,3)+ "_";
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

SubAlgoritmo ProcesarPrestamo (codigodesocioC, isbnLibro Por Referencia,codigoLibro, fecha, acumMultas Por Referencia,acumu_press Por Referencia, FiccionStock Por Referencia, TecnicoStock Por Referencia, InfantilStock Por Referencia, RefStock Por Referencia,acumCatFic Por Referencia, acumCatRef Por Referencia,acumCatTec Por Referencia,acumCatInf Por Referencia)
	
	codigodesocioC = Mayusculas(codigodesocioC)
	
	//Por si se quiere probar ingresando un codigodesocioC erroneo descomentar y jugar con esta variable
	//codigodesocioC = "IVA_VIE_9111";
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
		Escribir codigodesocioC
		esValido = falso;
		Si (Longitud(codigodesocioC) = 12)
			tiene12Car = Verdadero;
		FinSi
		Si (Subcadena(codigodesocioC, 4, 4) = "_" y Subcadena(codigodesocioC, 8,8) = "_")
			tiene2Guion = Verdadero;
		FinSi
		
		Para i<- 1 hasta 3 Hacer
			Para j = 1 hasta 26 Hacer
				Si(Subcadena(codigodesocioC, i,i) = abecedario[j])
					contMayus = contMayus + 1;
				FinSi
			FinPara
		FinPara
		
		Para i<- 5 hasta 7 Hacer
			Para j = 1 hasta 26 Hacer
				Si(Subcadena(codigodesocioC, i,i) = abecedario[j])
					contMayus = contMayus + 1;
				FinSi
			FinPara
		FinPara
		
		Para i <- 9 hasta 12 Hacer
			Para j = 1 hasta 10 Hacer
				Si (Subcadena(codigodesocioC, i, i) = numeros[j] )
					contNum = contNum + 1;
				FinSi
			FinPara
		FinPara
		
		Si (contMayus = 6 y contNum = 4 y tiene12Car y tiene2Guion) Entonces
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
			fechaC = FechaActual();
			Mostrar ("-------Préstamo registrado-------")
			Mostrar ("Código de socio: " + codigodeSocioC)
			Mostrar ("Código del libro solicitado: " + codigoLibro)
			Mostrar ("ISBN del libro solicitado: " + isbnLibro);
			mostrar ("Fecha del préstamo: " + ConvertirATexto(fechaC))
			acumu_pres <-- acumu_pres + 1
		FinSi
FinSubAlgoritmo

	
SubAlgoritmo Stock(FiccionStock Por Referencia, TecnicoStock Por Referencia, InfantilStock Por Referencia, RefStock Por Referencia,Opcion, codigoLibro)
	
FinSubAlgoritmo

SubAlgoritmo ProcesarDevoluciones
	
FinSubAlgoritmo

SubAlgoritmo generarComprobante
	
FinSubAlgoritmo


	