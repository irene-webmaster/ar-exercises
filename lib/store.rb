class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
            # message: "Sorry you must be over"
  validates :annual_revenue,
    numericality: {
      only_integer: true,
      greater_than: 0
    }

  validate :carry_at_least_one_of_the_apparel
  validate :new_store, on: :create

  def carry_at_least_one_of_the_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "You must carry at least one of the apparel")
      errors.add(:womens_apparel, "You must carry at least one of the apparel")
    end
  end

  def new_store
    if annual_revenue == nil && mens_apparel == false && womens_apparel == false
      errors.add(:annual_revenue, "must be 0 or more")
    end
  end
end
