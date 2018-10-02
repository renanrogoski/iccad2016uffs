# -*- coding: UTF-8 -*-
def abre_arquivos(nome):
	arquivo  = open(nome, "rb")
	arquivo.seek(0)
	alfabeto = arquivo.readlines()
	return alfabeto

def coleta_num_var_pular(arq_txt):
	return arq_txt[0].rstrip()

def coleta_variaveis(arq_csv, num_var_pular):
	primeira_linha = arq_csv[0]
	primeira_linha = primeira_linha.rstrip()	
	lista_saidas = primeira_linha.split(',')
	del(lista_saidas[0])	
	lista_saidasX = []
	for x in xrange(int(num_var_pular), len(lista_saidas)):		
		lista_saidasX.append(lista_saidas[x])

	#print lista_saidasX
	return lista_saidasX

def criaListaDeContagens(lista_saidas, arq_lines, num_var_pular):	
	#ldicSaidas = []
	llSaidas = []
	#print lista_saidas
	del(arq_lines[0])
	#print arq_lines
	i = 0
	for linha in arq_lines:
		#dict_lines = {}
		i += 1
		lPares = []
		linha = linha.rstrip()		
		linha = linha.split(',')
		del(linha[0])
		
		linhax = []
		for x in xrange(int(num_var_pular), len(linha)):
			linhax.append(linha[x])

		i = 0
		for var in lista_saidas:
			#dict_lines[var] = linhax[i]
			#lPares.append('('+linhax[i]+', '+"'"+var+"'"+')')
			par = (int(linhax[i]), var)
			lPares.append(par)
			i = i + 1

		#ldicSaidas.append(dict_lines)
		llSaidas.append(lPares)

		if len(llSaidas) ==  20:  #quantidade de linhas de simulações analisadas
			return llSaidas
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
	return float(sum(1 for (a, b) in zip(y1, y2) if a[1] == b[1])) / float(len(y1))

def geraAccuracy(ys):
	num   = 0
	total = 0
	qtd   = 0

	for y1 in ys:
		qtd += 1
		for y2 in ys:
			#if y1 != y2:
			num += 1
			#print num
			total += acc(y1, y2)
			#print total
	
	num = num - qtd
	total = total - qtd
	
	if num == 0 :
		print 'deu 0'
	else:				
		num = float(num)
		#print 'total = '+str(total)
		#print 'num = '+str(num)
		print str(round((total / num ) ,4)*100)



lista_csvs = abre_arquivos('lista_csvs_ordem_LEITURA.txt')
for um_csvTxt in lista_csvs:
	um_csvTxt = um_csvTxt.rstrip()
	um_csvTxt = um_csvTxt.replace("csv", '')
	#print um_csvTxt

	arq_csv = abre_arquivos(um_csvTxt+'csv')
	arq_txt = abre_arquivos(um_csvTxt+'txt')

#arq_csv = abre_arquivos('testcases_lines_and_vars/cad16_np3_case2/case8/cir1.v.csv')
#arq_txt = abre_arquivos('testcases_lines_and_vars/cad16_np3_case2/case8/cir1.v.txt')

	num_var_pular = coleta_num_var_pular(arq_txt)

	lista_saidas = coleta_variaveis(arq_csv, num_var_pular)
	llSaidas = criaListaDeContagens(lista_saidas, arq_csv, num_var_pular)

	l = ordenar_resultados(llSaidas)
	#print l
	#print 'vai acc'

	geraAccuracy(l)




