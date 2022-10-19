import tensorflow as tf
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sb

from urllib import parse
from http.server import HTTPServer, BaseHTTPRequestHandler
datoK= pd.read_csv("C:\\Users\MINEDUCYT\\Desktop\\parcial2\\parcial2.csv", sep=";")
print(datoK)


kelvin= datoK["kelvin"]
fahrenheit= datoK["fahrenheit"]

modelo=tf.keras.Sequential()
modelo.add(tf.keras.layers.Dense(units=1, input_shape=[1]))


modelo.compile(optimizer=tf.keras.optimizers.Adam(1),loss='mean_squared_error')


epocas= modelo.fit(kelvin, fahrenheit, epochs=2100, verbose=1)


f=modelo.predict([0])
print(f[0][0])

class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):
     def do_POST(self):
      content_length= int(self.headers['content-length'])
      data= self.rfile.read(content_length)
      data= data.decode().replace('pixels', '')
      data= data.unquote(data)
#inicio del servidor del puerto 3006
print ("aqui inicia el servidor del puerto 3006")
servidor=  HTTPServer(("localhost", 3006),SimpleHTTPRequestHandler)
servidor.serve_forever()