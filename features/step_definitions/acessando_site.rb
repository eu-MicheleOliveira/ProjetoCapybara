
Quando("acesso a URL") do
    visit '/treinamento/home'
   # sleep(5)

  end
  
  Entao("eu verifico se estou na pagina correta") do

    #verificar se está na pagina corrente
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
    sleep(5)  
    
end