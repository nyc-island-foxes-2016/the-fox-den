class Fox < ActiveRecord::Base
  belongs_to :den

  validates :name, length: {maximum: 50}, presence: true
  validates :color, length: {maximum: 20}
end
