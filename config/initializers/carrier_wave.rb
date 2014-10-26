if Rails.env.development?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = true
  end
elsif Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
elsif
  Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.enable_processing = true
  end
end
