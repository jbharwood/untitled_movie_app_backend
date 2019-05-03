class FeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "feed_channel"
    # var subscription = App.cable.subscriptions.create({channel: "FeedChannel", room_id: 1});
  end

  def unsubscribed
    x = Feed.find(params[:id])
    x.unsubscribe()
    # Any cleanup needed when channel is unsubscribed
  end
end
