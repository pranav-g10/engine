web: bundle exec unicorn -p $PORT -c ./spec/dummy/config/unicorn.rb
worker: bundle exec sidekiq -c 5 -v -r ./spec/dummy/config/initializers/sidekiq.rb