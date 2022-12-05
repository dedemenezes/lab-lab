class Project < ApplicationRecord
  has_rich_text :content
  has_many :methodologies
end
