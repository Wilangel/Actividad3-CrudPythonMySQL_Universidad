import pymysql
def editaRegistro():
	try:
		conexion = pymysql.connect(host='localhost',
								user='root',
								password='',
								db='universidad')
		try:
			with conexion.cursor() as cursor:        
				consulta = "UPDATE `profesor` SET `edad` = %s WHERE `profesor`.`primnom` = 'juan'AND profesor.primapel = 'perez' "
				
				nuevo_dato = input("Inserte el nuevo dato: ")
				
				
				cursor.execute(consulta, (nuevo_dato))
	
			# No olvidemos hacer commit cuando hacemos un cambio a la BD
			conexion.commit()
		finally:
			conexion.close()
		
	except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
		print("Ocurrió un error al conectar: ", e)
editaRegistro()