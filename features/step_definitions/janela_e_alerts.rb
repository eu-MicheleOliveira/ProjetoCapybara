


Quando("eu entro na janela e verifico a mensagem") do
     visit ('/mudancadefoco/janela')

     #janela recebe uma janela que foi aberta pelo link
     janela = window_opened_by do
      click_link'Clique aqui'

   end

   #muda de foco para a janela
   within_window janela do
    expect(current_url). to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

     @mensagem = find('.red-text text-darken-1 center')
     sleep(4)

   end
    end

 
  
  Quando("eu entro no alert e verifico e faco a acao") do
  


  end