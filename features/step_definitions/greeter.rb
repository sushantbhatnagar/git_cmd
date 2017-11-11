class CucumberGreeting
  def greet_cucumber
    'Hello Cucumber!'
  end
end


Given(/^a greeter$/) do
  @greeter = CucumberGreeting.new
end

When(/^I send it the greet message$/) do
  @greeting = @greeter.greet_cucumber
end

Then(/^I should get (.*)$/) do |text|
  @greeting.should == text
end
