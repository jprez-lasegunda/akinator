Given(/^entro al sitio de akinator$/) do
  visit "/akinator"
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^posteo pregunta$/) do 
   click_button("Posta!?")
end

When(/^selecciono "(.*?)"$/) do |texto|
  click_link(texto)
end

When(/^posteo pregunta "(.*?)"$/) do |texto1|
	click_button("Posta!?")
end

Given(/^inicio juego$/) do
  iniciar_juego 1
end

#Then(/^ver lista de preguntas "(.*?)" "(.*?)"$/) do |text1, text2|
#  last_response.body.should =~ /#{text1}/m
#  last_response.body.should =~ /#{text2}/m
#end



