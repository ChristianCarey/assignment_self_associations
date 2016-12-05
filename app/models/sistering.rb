class Sistering < ApplicationRecord
  belongs_to :initial_sister, class_name: 'City'
  belongs_to :receiving_sister, class_name: 'City'

  validates :sister1_id, :uniqueness => { :scope => :sister2_id }

end
