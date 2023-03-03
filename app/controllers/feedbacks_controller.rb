class FeedbacksController < ApplicationController
  def create
    Feedback.create(feedback_params)
    # puts "WOULD SEND TWEET: #{feedback_params[:text]}"
    # TwitterService.tweet!(feedback_params[:text])
  end

  private

  def feedback_params
    params.require(:feedback).permit(:text, :recipient_handle) # => {recipient_handle: 'somewhere', text: 'something'}
  end
end
