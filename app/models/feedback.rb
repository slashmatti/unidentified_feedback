class Feedback < ApplicationRecord
    before_create :sanitize
    after_create :send_tweet

    validates_presence_of :recipient_handle, :text
    validates_length_of :text, minimum: 1, maximum: 250

    def sanitize
        self.recipient_handle = self.recipient_handle.gsub('@', '')
    end

    def send_tweet
        puts "Sending tweet! @#{self.recipient_handle}, '#{self.text}'"
        # TwitterService.tweet!(self)
    end
end
