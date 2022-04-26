class Article < ApplicationRecord
    include Visible

    acts_as_taggable_on :tags
  
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

end
  