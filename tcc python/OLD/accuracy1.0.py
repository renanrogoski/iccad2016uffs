# -*- coding: UTF-8 -*-
def abre_arquivos(nome):
	arquivo  = open(nome, "rb")
	arquivo.seek(0)
	alfabeto = arquivo.readlines()
	return alfabeto

def coleta_num_var_pular(arq_txt):
	return arq_txt[0].rstrip()

def coleta_variaveis(arq_csv):
	primeira_linha = arq_csv[0]
	primeira_linha = primeira_linha.rstrip()	
	lista_saidas = primeira_linha.split(',')
	del(lista_saidas[0])

	return lista_saidas

def apura_precisao(lista_saidas, arq_lines):	
	#ldicSaidas = []
	llSaidas = []
	#print lista_saidas
	del(arq_lines[0])
	#print arq_lines
	for linha in arq_lines:
		#dict_lines = {}
		lPares = []
		linha = linha.rstrip()		
		linhax = linha.split(',')
		del(linhax[0])
		i = 0
		for var in lista_saidas:
			#dict_lines[var] = linhax[i]
			#lPares.append('('+linhax[i]+', '+"'"+var+"'"+')')
			par = (int(linhax[i]), var)
			lPares.append(par)
			i = i + 1

		#ldicSaidas.append(dict_lines)
		llSaidas.append(lPares)
		
	#print ldicSaidas
	return llSaidas

def ordenar_resultados(lista):
	lista_ordenada = []
	for sub_lista in lista:
		sub_lista.sort()
		lista_ordenada.append(sub_lista)

	return lista_ordenada

def acc(y1, y2):
	#print(y1 , y2)
	return sum(1 for (a, b) in zip(y1, y2) if a[1] == b[1]) / len(y1)

#arq_csv = abre_arquivos('testcases_lines_and_vars/unit16/in_1.v.csv')
arq_csv = abre_arquivos('testcases_lines_and_vars/cad16_np3_case/case0/testesRenan.csv')
arq_txt = abre_arquivos('testcases_lines_and_vars/cad16_np3_case/case0/cir1.v.txt')

num_var_pular = coleta_num_var_pular(arq_txt)

lista_saidas = coleta_variaveis(arq_csv)
llSaidas = apura_precisao(lista_saidas, arq_csv)


l = ordenar_resultados(llSaidas)
#print l

precisao_par = acc(l[0], l[1])
print precisao_par

vResult = []
for i in xrange(1,len(l)-1):
	vResult.append(acc(l[i], l[i+1]))

print vResult

num   = 0
total = 0
ys = l

for y1 in ys:
	for y2 in ys:
		if y1 != y2:
			num += 1
			total += acc(y1, y2)

print 'total = '+str(total)
print 'num = '+str(num)
print 'Accuracy médio = ' +str(total / num)

