

Quando("eu marco um checkbos e um radiobox") do
   
    visit('/buscaelementos/radioecheckbox')
         find('label [for="white"]').click
        check('purple', allow_label_click: true)
        sleep(5)
  end