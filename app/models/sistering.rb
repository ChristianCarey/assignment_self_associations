class Sistering < ApplicationRecord

  validates :sister1_id, :uniqueness => { :scope => :sister2_id }

end
