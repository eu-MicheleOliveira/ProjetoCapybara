




Quando("eu faco um upload de arquivo") do
    visit('/outros/uploaddearquivos')
    attach_file('upload', '/Users/fulltime/Desktop/Capybara/features/img.png', make_visible: true)
    sleep(5)

    

  end