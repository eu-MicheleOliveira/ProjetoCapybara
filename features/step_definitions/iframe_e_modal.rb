

Quando("entro no iframe e preencho os campos") do
         visit ('/mudancadefoco/iframe')


            #mudando o foco para o iframe
           within_frame('id_do_iframe') do
            #iremos fazer as açoes dentro do iframe
      
             fill_in(id:'first_name', with: 'michele') 
              fill_in(id:'last_name', with: 'oliveira')
                sleep(4)


           end
        end   

  Quando("entro no modal e verifico o texto") do
        visit ('/mudancadefoco/modal')
        find('a[href="#modal1"]').click
        
        within('#modal1') do 
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
        find('.modal-close').click
        sleep(3)

  end
  sleep(4)
end  
 