CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAJXTL6MGNNSCMDTSQ',       # required
      aws_secret_access_key: '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',                        # required
      region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'vmasseur'                          # required
  config.fog_public     = true                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end