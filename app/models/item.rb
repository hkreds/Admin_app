class Item < ApplicationRecord
  belongs_to :genre
  enum sold_out: { selling: 0, sold_out: 1 }
end
