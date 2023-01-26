import pymysql
def eliminaRegistro():
	try:
		conexion = pymysql.connect(host='localhost',
								user='root',
								password='',
								db='universidad')
		try:
			with conexion.cursor() as cursor:
				
				consulta = "DELETE FROM prof_asig;"
				nombreTabla = input("Inserte Nombre tabla : ")
				cursor.execute(consulta)
	
			# No olvidemos hacer commit cuando hacemos un cambio a la BD
			conexion.commit()
	
		finally:
			conexion.close()
			
		
	except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
		print("Ocurrió un error al conectar: ", e)

	print("Eliminacion Exitosa")

eliminaRegistro()