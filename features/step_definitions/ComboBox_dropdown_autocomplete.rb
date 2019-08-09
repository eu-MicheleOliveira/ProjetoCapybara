


Quando("interajo com dorpdown e select") do
    visit ('/buscaelementos/dropdowneselect')
   
    find('.btn.dropdown-button').click
    sleep(2)

    find('#dropdown3').click
    sleep(2)

    select 'Chrome', from: 'dropdown'
    sleep(2)
  
    find('option[value="2"]').select_option 
    sleep(2)

end
  
Quando("Preencho o autocomplete") do
   visit('/widgets/autocomplete')

    find('#autocomplete-input').set 'Rio de Jane'
    find('ul', text: 'Rio de Janeiro').click
    sleep(5)


   
end