# import module
import random as r

def numero_telefone():
     
    ph_no = []
    
    # the first number should be in the range of 6 to 9
    ph_no.append(r.randint(6, 9))           
    ph_no.append(r.randint(6, 9))           
    ph_no.append(9)                         #9 por ser o nono digito inserido nas regiões
    
    # the for loop is used to append the other 9 numbers.
    # the other 9 numbers can be in the range of 0 to 9.
    for i in range(1, 9):
        ph_no.append(r.randint(0, 9))
    
    # printing the number
    for i in ph_no:
        return ph_no


#fonte: Acervo Lima - https://acervolima.com/como-gerar-um-numero-de-telefone-aleatorio-usando-python/
#código adaptado para receber o "nono dígito"