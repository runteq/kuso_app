CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'kusoapp' # ...two lines
  config.fog_provider = 'fog/aws'
  config.fog_directory  = 'kusoapp'
  config.fog_public = true

  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_S3_ACCESS_KEY'],
    aws_secret_access_key: ENV['AWS_S3_SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1'
  }
end
