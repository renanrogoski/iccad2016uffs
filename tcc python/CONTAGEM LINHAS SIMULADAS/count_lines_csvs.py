def abre_arquivos(nome):
	arquivo  = open(nome, "rb")
	arquivo.seek(0)
	alfabeto = arquivo.readlines()
	return alfabeto

def read_inputs_outpus(lista_txts):	
	for um_txt in lista_txts:
		um_txt = um_txt.rstrip()
		#print um_txt
		lines_um_txt = abre_arquivos(um_txt)
		nova_linha_count = 0
		nova_linha = ''
		nova_linha = nova_linha+um_txt
		for var in lines_um_txt:	
			var = var.rstrip()			
			nova_linha_count = nova_linha_count + 1



		nova_linha = nova_linha+','+str(nova_linha_count-1)
		print nova_linha  


lista_csvs = abre_arquivos('lista_csvs1.txt')
#print lista_csvs
read_inputs_outpus(lista_csvs)