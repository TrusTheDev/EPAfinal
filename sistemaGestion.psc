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
				ProcesarPrestamo(codigodesocio, isbnLibro, fecha,dia,mes,anio,acumu_pres, acumMultas, FiccionStock, TecnicoStock, InfantilStock, RefStock);
				generarComprobante();
			3:
				ProcesarDevoluciones();
				generarComprobante();
			De Otro Modo:
				Mostrar "Opcion invalida"
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

SubAlgoritmo ProcesarPrestamo (codigodesocio, isbnLibro, fecha,dia,mes,anio,acumu_pres Por Referencia, acumMultas Por Referencia, FiccionStock Por Referencia, TecnicoStock Por Referencia, InfantilStock Por Referencia, RefStock Por Referencia)
FinSubAlgoritmo

SubAlgoritmo ProcesarDevoluciones
	
FinSubAlgoritmo

SubAlgoritmo generarComprobante
	
FinSubAlgoritmo


	