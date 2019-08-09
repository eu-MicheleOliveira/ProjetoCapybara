
Quando("clico em botoes") do
 visit '/'
 click_on('Começar Automação Web') #click_link_or_button sao iguais
 
 visit '/buscaelementos/botoes'
 sleep(2)
 click_button(class: 'btn waves-light')
 sleep(2)

 find('a[onclick="ativaedesativa2()"]').click
 find('a[onclick="ativaedesativa2()"]').double_click
 find('a[onclick="ativaedesativa3()"]').right_click #clicar com o botao direito


 
 visit '/'
 click_link('Batista no Youtube') #acessar texto do link
 sleep(5)

 
 end
 