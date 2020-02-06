class Athlete < ApplicationRecord
  belongs_to :category
  belongs_to :free_skate
  belongs_to :compulsory_figure
end
