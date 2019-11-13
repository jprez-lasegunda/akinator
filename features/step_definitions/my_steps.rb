Given(/^entro al sitio de akinator$/) do
  visit "/akinator"
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^posteo pregunta$/) do
   click_button("Posta!?")
end

