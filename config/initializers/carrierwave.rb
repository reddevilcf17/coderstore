CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = 'coderschool'
  config.aws_acl    = 'public-read'

  # The maximum period for authenticated_urls is only 7 days.
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

  # Set custom options such as cache control to leverage browser caching
  config.aws_attributes = {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  }

  config.aws_credentials = {
    access_key_id:      'AKIAJQYUWRPSLJLIGLSQ',
    secret_access_key:  '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',
    region:             'ap-southeast-1'
  }
end
