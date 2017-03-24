module SiteInmetricsScreenObjects

	def home_esta_visivel?
			visit 'http://www.inmetrics.com.br/'
			sleep 5
	end


	def clicar_link_quem_somos
		find(:xpath, '//*[@id="menu-item-2960"]/a/span/span').click
		sleep 5
	end

	def mensagem_visivel_na_tela?(texto)
	 	page.first('div#navigation iwh-sub-title animate fadeInDown animated') == texto
	end
end
