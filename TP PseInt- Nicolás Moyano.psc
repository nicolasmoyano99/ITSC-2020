SubProceso Valido <- EsNumero ( CantDinero1 )
	Definir NumerosValidos como cadena;
	Definir I, J como Entero;
	Definir Valido como logico;
	NumerosValidos <- "1234567890";
	
	Para J<-0 Hasta Longitud(CantDinero1)-1 Con Paso 1 Hacer
		Para I<-0 Hasta 9 Con Paso 1 Hacer
			Si Subcadena(CantDinero1,J,J) = Subcadena(NumerosValidos,I,I) Entonces
				I <- 10;
				Valido <- Verdadero;
			SiNo
				Valido <- Falso;
			FinSi
		FinPara
		Si Valido = Falso Entonces
			J <- Longitud(CantDinero1);
		FinSi
	FinPara
FinSubProceso


Proceso BancodelaNacion
	
	//Variables
	
	Definir Codigo1 Como Entero;
	Definir CantDinero1 como cadena;
	
	//Inicio
	
	Borrar Pantalla;
	Escribir "Bienvenido al Banco Nación";
	Escribir "Escriba su Codigo para ingresar";
	Leer Codigo1;
	
	Escribir "Se ha leido su Codigo Correctamente, Ingrese la Cantidad de dinero para Retirar";
	Leer CantDinero1;
	
	Si EsNumero(CantDinero1) Entonces
		Escribir "se ha escrito correctamente la cantidad, continue a retirar su dinero";
	SiNo
		Escribir "ha escrito mal su cantidad de dinero, ingrese nuevamente";
		Leer CantDinero1;
		
		
	FinSi
	
	Borrar Pantalla;
	Escribir "---Recibo de la cantidad de su retiro---";
	
	Si EsNumero(CantDinero1) Entonces
		Leer CantDinero1;
	SiNo
		Escribir "Su Retiro se ha producido un error, inténtelo nuevamente";
		Leer CantDinero1; 
	FinSi
	
	Escribir "Muchas gracias por acceder a éste programa, Has pronto"; 
	Escribir "Presione cualquier tecla para finalizar"; 
	Esperar Tecla;
FinProceso
