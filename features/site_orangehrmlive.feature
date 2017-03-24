#language: pt
#encoding: utf-8

Funcionalidade: Efetuar login e Adicionar um “Disciplinary Case” no setor “Discipline”

	Esquema do Cenario: Realizar o login e criar um Disciplinary
		Dado que acesso o site do OrageHRM
		E efetuo login utilizando credenciais válidas
		E clico em Discipline
		Quando clico em ADD
		E preencho os campos "<Employee Name>", "<Case Name>" e "<Description>"
		E clico no botão save
		Então visualizo a mensagem de sucesso
			Exemplos:
				| Employee Name	|		Case Name		|		Description		|
				|		Ryan Parker	|			Red Hot		|	Californication	|


	Cenário: Tentar realizar login com credenciais inválidas
		Dado que acesso o site do OrageHRM
		E tento efetuar login utilizando credenciais inválidas
		Então visualizo a mensagem de erro



	#Esquema do Cenario: login negativo
		#Dado  que acesso o site da Disciplinary
		#E insiro as credenciais "<LOGIN>" , "<SENHA>"
		#Entao visualizo  a mensagem de falha.
		#Exemplos: preenchimento válido
			#|LOGIN	   |SENHA   |
			#|peter.mac2|peter.mac2|
