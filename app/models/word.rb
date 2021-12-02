class Word < ApplicationRecord
  belongs_to :user, optional: true
end
