class Repository < ApplicationRecord
  has_many :objs, dependent: :destroy
end
