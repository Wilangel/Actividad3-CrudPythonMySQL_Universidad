import pymysql
def connectar():
    try:
        conexion = pymysql.connect(host='localhost',
                                user='root',
                                password='',
                                db='universidad')
        print("Conexión correcta")
    except (pymysql.err.OperationalError, pymysql.err.InternalError) as e:
        print("Ocurrió un error al conectar: ", e)
connectar()