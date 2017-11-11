require 'require_all'
require_all 'lib'

module Codebreaker
  describe Game do
    let(:output) { double('output').as_null_object }
    let(:game) { Game.new(output) }

    describe "#start" do
      #We might have to create a lot of instance variables and same needs to be defined in scenarios below. Better
      #approach is to use let

      # before(:each) do
      #   @output = double('output').as_null_object
      #   @game = Game.new(@output)
      # end

      it "sends a welcome message" do
        #RSpec::Mocks - should learn it.
        #as_null_object is a design pattern which lets test double use what we want it to use.
        #the double output to only listen for the messages we tell it to expect and ignore any other messages
        # expect(output).to receive(:puts).with('Welcome to Codebreaker!')
        #expect(object).to receive(:method).with (expected value)

        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it "prompts for the first guess" do
        output.should_receive(:puts).with('Enter guess:')
        game.start('1234')
      end


      describe "#guess" do
        context "with no matches" do
          it "sends a mark with ''" do
            game.start('1234')
            output.should_receive(:puts).with('')
            game.guess('5555')
          end
        end

        context "with 1 number match" do
          it "sends a mark with '-'" do
            game.start('1234')
            output.should_receive(:puts).with('-')
            game.guess('2555')
          end
        end
      end

    end

  end
end