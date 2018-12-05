require "rspec"
require "card"


describe Card do
    subject(:card) { Card.new(:suit, :value) }

    describe "#initialize" do
        it "initializes with a suit and value" do
            expect(card.suit).to eq(:suit)
            expect(card.value).to eq(:value)
        end
    end
end