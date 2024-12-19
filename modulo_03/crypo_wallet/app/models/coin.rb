class Coin < ApplicationRecord
  belongs_to :mining_type # associando a tabele miningTypes para a tabela Coins
end
