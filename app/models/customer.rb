class Customer < ApplicationRecord
  has_many :reviews
  has_many :orders
  # default_scope { select(:first_name).order(:first_name) }
  scope :order_between, ->(a,b) { where('order_count between ? and ?', a, b) }
end
