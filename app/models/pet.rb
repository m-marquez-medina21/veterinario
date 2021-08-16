class Pet < ApplicationRecord
belongs_to :client
has_many :pet_histories, dependent: :destroy

def history_count
    self.pet_histories.count
end

def avg_weight
    self.pet_histories.average(:weight)
end

def avg_height
    self.pet_histories.average(:heigth)
end

def max_weight
    self.pet_histories.pluck(:weight).max
end

def max_height
    self.pet_histories.pluck(:heigth).max
end

end
