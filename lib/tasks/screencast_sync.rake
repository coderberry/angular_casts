require 'screencast_importer'

namespace :screencast_sync do
  desc 'sync all missing screencasts from Railscasts.com'
  task :railscasts => :environment do
    total = ScreencastImporter.import_railscasts
    puts "There are now #{total} screencasts from Railscasts.com"
  end
end