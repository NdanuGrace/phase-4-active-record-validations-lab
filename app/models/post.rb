class Post < ApplicationRecord
    validates :title, presence: true 
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, :inclusion => %w(Fiction Non-Fiction) 
    validate :clickbait


    def clickbait
        if title == "True Facts"
            errors.add(:title, "Invalid")
        end
    end
end
