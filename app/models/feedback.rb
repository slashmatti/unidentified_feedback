class Feedback < ApplicationRecord
    after_create :send_tweet

    def send_tweet
        puts "Sending tweet!"
        # TwitterService.tweet!(text)
    end
end
