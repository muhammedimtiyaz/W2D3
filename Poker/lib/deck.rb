require_relative "card"
require "byebug"

class Deck
    #might want add cards to private
    VALUES = [
        :two,
        :three,
        :four,
        :five,
        :six,
        :seven,
        :eight,
        :nine,
        :ten,
        :jack,
        :queen,
        :king,
        :ace
    ]
    SUIT = [
        :spade,
        :diamond,
        :heart,
        :club
    ]
    attr_reader :cards 

    def initialize
        @cards = populate
    end

    def inspectah_deck
        cards.length
    end
    
    private
    
    def populate
        
        @cards = []
        SUIT.each do |suit|
            VALUES.each do |value|
                @cards << Card.new(suit, value)
            end
        end
        @cards
        # debugger
    end

end

if __FILE__ == $PROGRAM_NAME
    d = Deck.new
end
    