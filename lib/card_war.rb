require "card_deck"
class CardDeck::Card
    # The card's value
        def value
            case @num
                when 2..10 then @num.to_i
                when "Jack" then 11
                when "Queen" then 12
                when "King" then 13
                when "Ace" then 14
            end
        end
end
    
