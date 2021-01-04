class ReservedMessage < ApplicationRecord

    belongs_to :user
    belongs_to :reserved_book

    def self.all_messages
        all.map { |message| [message, message.user]}
    end
end
