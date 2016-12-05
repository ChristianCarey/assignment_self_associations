class City < ApplicationRecord

  has_many :initialized_sisterings, class_name: 'Sistering', 
                                    foreign_key: :initial_sister_id

  has_many :received_sisters, through: :initialized_sisterings, 
                              source: :received_sister

  has_many :received_sisterings, class_name: 'Sistering',
                                 foreign_key: :receiving_sister_id

  has_many :initial_sisters, through: :received_sisterings, 
                              source: :initial_sister
  

  has_many :initiated_friendings, :foreign_key => :friender_id,
                                  :class_name => "Friending"
  has_many :friended_users,       :through => :initiated_friendings,
                                  :source => :friend_recipient

  # When acting as the recipient of the friending
  has_many :received_friendings,  :foreign_key => :friend_id,
                                  :class_name => "Friending"
  has_many :users_friended_by,    :through => :received_friendings,
                                  :source => :friend_initiator
end
