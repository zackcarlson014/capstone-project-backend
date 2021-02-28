class Friend < ApplicationRecord

    belongs_to :inviter, :class_name => "User"
    belongs_to :invitee, :class_name => "User"

    validates :inviter_id, uniqueness: {scope: :invitee_id}
end
