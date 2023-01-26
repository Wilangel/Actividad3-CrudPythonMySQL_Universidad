import pymysql
def findAll():
	try:
		conexion = pymysql.connect(host='localhost',
								user='root',
								password='',
								db='universidad')
		try:
			with conexion.cursor() as cursor:
				# En este caso no necesitamos limpiar ningún dato
				cursor.execute("SELECT * FROM `asignatura`; ")
	
				# Con fetchall traemos todas las filas
				persona = cursor.fetchall()
	
				# Recorrer e imprimir
				for persona in persona:
					print(persona)
		finally:
			conexion.close()
		
	except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
		print("Ocurrió un error al conectar: ", e)

findAll()