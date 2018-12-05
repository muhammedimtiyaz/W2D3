require "rspec"
require "deck"

describe Deck do
    subject(:deck) { Deck.new }

    describe "#initialize" do
        it "initializes a deck with 52 cards" do
            expect(deck.cards.length).to be(52)
        end

        it "creates a deck of only card instances" do 
            expect(deck.cards.all?{|card| card.class == Card}).to be_truthy
        end
        
        it "ensures that deck contains no duplicate cards" do
            expect(deck.cards.uniq).to eq(deck.cards)
        end
    end

    describe "#inspectah_deck" do
        it "counts the number of cards remaining in the deck" do
            expect(deck.inspectah_deck).to eq(52)
        end
    end
end