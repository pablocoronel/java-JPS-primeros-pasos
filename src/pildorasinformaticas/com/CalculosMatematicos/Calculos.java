package pildorasinformaticas.com.CalculosMatematicos;

public class Calculos {
	// la variable es estatica para que se pueda hacer refencia a ella dentro de los
	// metodos estaticos
	private static int resultado;

	/**
	 * El metodo es estatico para que se pueda llamar sin instanciar
	 * 
	 * @param uno
	 * @param dos
	 * @return
	 */
	public static int metodoSuma(int uno, int dos) {
		resultado = uno + dos;
		return resultado;
	}

	public static int metodoResta(int uno, int dos) {
		resultado = uno - dos;
		return resultado;
	}

	public static int metodomultiplica(int uno, int dos) {
		resultado = uno * dos;
		return resultado;
	}
}
