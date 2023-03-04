class Feedback < ApplicationRecord
    after_create :send_tweet

    def send_tweet
        puts "Sending tweet! @#{self.recipient_handle}, '#{self.text}'"
        # TwitterService.tweet!(self)
    end
end
