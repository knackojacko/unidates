class Question < ApplicationRecord
    has_many :questionnaire
    has_many :answer, through: :questionnaire
end
