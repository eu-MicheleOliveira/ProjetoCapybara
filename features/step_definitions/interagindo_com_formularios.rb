


Quando("eu faco cadastro") do
   visit ('/users/new')

   fill_in(id: 'user_name', with: 'Michele')
   sleep(2)
   
   find('#user_lastname').set('Oliveira')
   sleep(2)

   find('#user_email').send_keys('michele564000@gmail.com')
   sleep(2)

   fill_in(id: 'user_address', with: 'Rua ABS')
   sleep(2)
   
   find('#user_university').set('Fatec')
   sleep(2)

   find('#user_profile').send_keys('QA')
   sleep(2)
   
   fill_in(id: 'user_gender', with: 'Feminino')
   sleep(2)
   
   find('#user_age').set('19')
   sleep(2)

  find('input[value="Criar"]').click
  sleep(5)
end
  
Entao("verifico se fui cadastrado") do
    texto = find ('#notice')

        expect(texto.text). to eql 'Usuário Criado com sucesso'
end
