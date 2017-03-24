require 'capybara/cucumber'
require "selenium-webdriver"
module PeterScreenObjects
	include Capybara
	include Rack::Test::Methods

	def ir_ao_site
	  	visit 'https://enterprise-demo.orangehrmlive.com'
	  	sleep(8) #conexão muito lenta (padrão Franco da Rocha)
	end

	def efetuar_login(login, senha ,campo_login , campo_senha, botao_login)
		page.find(:id, campo_login).click
    fill_in campo_login, with: login
    page.find(:id, campo_senha).click
    fill_in campo_senha, with: senha
    page.find(:id, botao_login).click
	end


	def clicar_em_disciplinary(botao_disciplinary)
		page.find(:id, botao_disciplinary).click
	end


	def clicar_botao_add botao_add
		page.find(:id, botao_add).click
	end


	def inserirDados(usuario, senha ,campo_login , campo_senha, botao_login)
		page.find(:id, campo_login).click
		fill_in campo_login, with: usuario
		page.find(:id, campo_senha).click
		fill_in campo_senha, with: senha
		page.find(:id, botao_login).click
	end


	def preencher_campos(arg1,arg2,arg3,id_nome,id_case,id_descricao)
		page.find(:id, id_nome).click
    fill_in id_nome, with: arg1
    page.find(:id, id_case).click
    fill_in id_case, with: arg2
    page.find(:id, id_descricao).click
    fill_in id_descricao, with: arg3
	end

	def clicar_botao_save botao_save
		page.find(:id, botao_save).click
	end

	def mensagem_de_sucesso_carregou?(mensagem)
		page.find(:id, mensagem).click
	end

	def tela_login_visivel?(id_tela)
		page.find(:id, id_tela).click
	end

end
