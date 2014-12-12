module SkeletonRuby
  class App

    def initialize
      SkeletonRuby::Database.initialize
    end

    def run
      # Access configruation
      puts SkeletonRuby::Config.config.inspect

      # Log something
      SkeletonRuby::Logger.log.info "Log this!"

      puts 'Running application'

      # Interact with database
      user = User.new
      user.name = 'Test'
      if user.save
        puts 'User Saved'
      end

    end

  end
end