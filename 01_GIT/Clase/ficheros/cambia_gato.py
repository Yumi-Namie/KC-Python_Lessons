#como este archivo esta en la misma carpeta de los txtos, no hace falta crear path, se puede ir directo
perro = open("perro_perra.txt", "r")

lineas = perro.readlines()

perro.close()
new_lines = []
for linea in lineas:
    new_line = linea.replace("perr", "gat")
    new_lines.append(new_line)
    
    #new_line.append(linea.replace("perr", "gat"))

gato = open("gato_gata.txt", "w")
gato.writelines(new_lines)
gato.close()

