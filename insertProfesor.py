# importamos conector
import pymysql
def insertaRegistro():
    try:
        # intentamos conexion
        conexion = pymysql.connect(host='localhost',
                                user='root',
                                password='',
                                db='universidad')
        try:
            # creamos el cursor para ejecutar consultas
            with conexion.cursor() as cursor:
                # establecemos la consulta
                consulta = "INSERT INTO `profesor` (`cod_prof`,`primnom`, `segnom`, `primapel`, `segapel`, `edad`, `telefono`) VALUES ( %s, %s, %s, %s, %s, %s,%s);"
                # usamos el metodo execute del cursor para insertar los datos
                cursor.execute(consulta,(
                input("Inserte Codigo de profesor: "),
                input("Inserte Primer Nombre: "), 
                input("Inserte Segundo Nombre: "),
                input("Inserte Primer Apellido: "),
                input("Inserte Segundo Apellido: "),
                input("Inserte Inserte Edad: "),
                input("Inserte Telefono: ")
                ))
        # realizamos commit de la insercion
            conexion.commit()
        finally:
            # cerramos la conexion
            conexion.close()
        #reportamos insercion correcta
        print("insercion Correcta...")
    # capturamos el error si lo hay.
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
insertaRegistro()
