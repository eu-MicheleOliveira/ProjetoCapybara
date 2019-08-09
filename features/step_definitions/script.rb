

Before  do   
 
    page.driver.browser.manage.window.maximize
    
  end

Quando("eu uso um script") do

    visit('/outros/scroll')
    page.execute_script("window.scrollBy(0,9000)")
   @result  = page.evaluate_script('15 + 5')
   puts @result


  end