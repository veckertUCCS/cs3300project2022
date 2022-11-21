class Project < ApplicationRecord
    #this line validates the presence of a title and a description in a project object
    #in other words, it makes sure the project fields actually have components
    #validates :title, :description, presence: true
end
