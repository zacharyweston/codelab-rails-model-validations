class Book < ActiveRecord::Base
  validates :title, presence: {
    message: "must be included to save this record."
  }
  validates :page_count, presence: {
    message: "must be included to save this record"
  }
  validates :page_count, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,
    message: "must be a number greater than 0."
  }
  validates :page_count, numericality: {
    only_integer: true,
    less_than_or_equal_to: 9999,
    message: "is implausible. Please enter a more realistic number of pages."
  }
end
