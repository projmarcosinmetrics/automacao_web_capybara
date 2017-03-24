require 'capybara/cucumber'
require "selenium-webdriver"
class SiteOrangeHmScreen
	include PeterScreenObjects
	include Capybara
	include Rack::Test::Methods

	attr_accessor :id_campo_usuario, :id_campo_senha, :id_botao_discipline , :id_botao_add ,:id_name ,:case, :id_botao_save, :descricao, :id_botao_login , :tela_login, :id_mensagem_sucesso

	def initialize
		@id_campo_usuario= 'txtUsername'
		@id_campo_senha ='txtPassword'
		@id_botao_login ='btnLogin'
		@id_botao_discipline = 'menu_discipline_defaultDisciplinaryView'
		@id_botao_add = 'btnAdd'
		@id_name ='addCase_employeeName_empName'
		@id_mensagem_sucesso= 'content'
		@case='addCase_caseName'
		@id_botao_save='btnSave'
		@descricao='addCase_description'
		@tela_login ='frmRetryLogin'
	end

end
