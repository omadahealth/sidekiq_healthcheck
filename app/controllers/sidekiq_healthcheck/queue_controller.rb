module SidekiqHealthcheck
  class QueueController < ActionController::Base

    def index
      render json: queue_latencies
    end

    protected

    def queue_latencies
      Sidekiq::Queue.all.map do |x|
        {
          name: x.name,
          latency: x.latency,
          count: x.count
        }
      end
    end
  end
end