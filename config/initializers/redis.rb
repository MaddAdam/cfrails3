if Rails.env.production?
  Rails.configuration.redis = {
    $redis = Redis.new(url: ENV["REDIS_URL"])
  }
else
  Rails.configuration.redis = {
    $redis = Redis.new(:host => 'localhost', :port => 6379)
  }
end
