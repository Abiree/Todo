class List < ApplicationRecord
    validates :title, presence: true
    validates :Author, presence: true
    validates :desc, presence: true, length: { minimum: 10 }
end
