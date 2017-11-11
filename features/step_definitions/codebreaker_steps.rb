Given /^I am not yet playing$/ do

end


When /^I start a new game$/ do
  @messenger = StringIO.new
  game = Codebreaker::Game.new(@messenger)
  game.start
end

class Output
  def messages
    @messages ||=[]
  end

  def puts(message)
    messages << message
  end
end

def output
  @output||= Output.new
end

Then /^I should see "([^"]*)"$/ do |message|
  expect(@messenger.string.split("\n")).to include(message)
end


Given(/^the secret code is "([^"]*)"$/) do |secret|
  @messenger = StringIO.new
  @game = Codebreaker::Game.new(@messenger)
  @game.start(secret)
end

When(/^I guess "([^"]*)"$/) do |guess|
  @game.guess(guess)
end

Then(/^the mark should be "([^"]*)"$/) do |mark|
  expect(@messenger.string).to include(mark)
end