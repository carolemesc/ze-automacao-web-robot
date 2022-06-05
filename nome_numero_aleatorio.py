import string
import random

def random_generator(size=8, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))


#código Matheus Battisti
#https://www.horadecodar.com.br/2021/04/15/gerar-string-com-letras-e-numeros-aleatorios-em-python/