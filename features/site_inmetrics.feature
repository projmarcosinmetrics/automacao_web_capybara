#language: pt

Funcionalidade: Acessar o site da InMetrics e conhecer a empresa
	Cenario: validar informação na página quem somos
		Dado que estou na home do site da InMetrics
		Quando clico no link Quem Somos
		Então sou direcionado para a página e visualizo a mensagem "MAIS DE 15 ANOS DE ATUAÇÃO"
