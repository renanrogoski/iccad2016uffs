def abre_arquivos(nome):
	arquivo  = open(nome, "rb")
	arquivo.seek(0)
	alfabeto = arquivo.readlines()
	return alfabeto

def read_inputs_outpus(lista_txts):	
	for um_txt in lista_txts:
		um_txt = um_txt.rstrip()
		#print um_txt
		inputs_outpus_um_txt = abre_arquivos(um_txt)
		nova_linha = ''
		nova_linha = nova_linha+um_txt
		for var in inputs_outpus_um_txt:
			var = var.rstrip()			
			nova_linha = nova_linha+','+var
		print nova_linha  


lista_csvs = abre_arquivos('lista_csvs.txt')
#print lista_csvs
read_inputs_outpus(lista_csvs)
