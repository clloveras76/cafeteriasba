<?php

namespace cafeterias\DB;

use PDO;
use PDOStatement;

// Clase de conexi贸n a la base en modo Singleton.
class DBConnection
{
	// Definimos una propiedad est醫ica para almacenar la conexi贸n.
	// Al ser est醫ica, solo existe para la clase, y dura hasta el
	// final de la ejecuci贸n.
	// La hacemos privada para que nadie pueda tocar esa propiedad.
	private static $db = null;

	// Definimos al constructor como privado para evitar que cualquiera,
	// salvo esta misma clase, pueda crear una instancia.
	private function __construct() {}

	/**
	 * Abre la conexi贸n a la base de datos con PDO.
	 */
	private static function openConnection()
	{
		// Definimos los valores de la conexi贸n.
		// Estos normalmente salen de un archivo externo de config.
		$host = "localhost";
		$user = "cafeteri";
		$pass = "Co230Fv4hn!!!!";
		$base = "cafeteri_cafeterias";
		// Seteamos el Driver Source Name.
		$dsn = "mysql:host=$host;dbname=$base;charset=utf8";

		self::$db = new PDO($dsn, $user, $pass);
	}

	/**
	 * Retorna una conexi贸n a la base de datos en modo Singleton.
	 *
	 * @return PDO
	 */
	public static function getConnection()
	{
		// Si no tenemos conexi贸n, la abrimos.
		if(is_null(self::$db)) {
			self::openConnection();
		}

		// Retornamos la conexi贸n.
		return self::$db;
	}

	/**
	 * Retorna el PDOStatement para el $query proporcionado.
	 * 
	 * @param string $query
	 * @return PDOStatement
	 */
	public static function getStatement($query)
	{
		return self::getConnection()->prepare($query);
	}
}