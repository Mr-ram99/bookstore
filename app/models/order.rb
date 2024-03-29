class Order < ApplicationRecord
  belongs_to :customer
  has_and_belongs_to_many :books, join_table: 'bookorders'
  enum status: %i[shipped being_packed complete cancelled]
end
