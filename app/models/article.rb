class Article < ApplicationRecord
    include Visible
    
    # delete all related comments to post, when post is deleted
    has_many :comments, dependent: :destroy
    
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
