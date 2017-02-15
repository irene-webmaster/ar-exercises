class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 },
            message: “Sorry you must be over 3”
end
