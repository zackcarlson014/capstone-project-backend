class ReservedMessage < ApplicationRecord

    belongs_to :user
    belongs_to :reserved_book

    def self.all_messages
        all.map { |message| [
            {
                id: message.id, 
                reserved_book_id: message.reserved_book_id, 
                content: message.content, 
                created_at: message.created_at
            }, 
            {
                id: message.user.id, 
                username: message.user.username, 
                prof_pic_url: message.user.prof_pic_url
            }
        ]}
    end
end
