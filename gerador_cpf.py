import random

def generate_cpf():                                                        
    cpf = [random.randint(0, 9) for x in range(9)]                              
                                                                                
    for _ in range(2):                                                          
        val = sum([(len(cpf) + 1 - i) * v for i, v in enumerate(cpf)]) % 11      
                                                                                
        cpf.append(11 - val if val > 1 else 0)                                  

    return '%s%s%s.%s%s%s.%s%s%s-%s%s' % tuple(cpf)

#FONTE: https://gist.github.com/lucascnr/24c70409908a31ad253f97f9dd4c6b7c
#GitHub de lucascnr