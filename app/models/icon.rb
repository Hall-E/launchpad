class Icon < ApplicationRecord
has_many :categories


  before_save { |icon| icon.name = name.downcase }
end
