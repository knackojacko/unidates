class Answer < ApplicationRecord
    has_many :questionnaire
    has_many :question, through: :questionnaire
end
