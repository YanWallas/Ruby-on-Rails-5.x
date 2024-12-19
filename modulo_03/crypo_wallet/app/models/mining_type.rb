class MiningType < ApplicationRecord
  has_many :coins # é ao contrario de belongs_to, faz a referencia de tabelas a contrario. 
end
