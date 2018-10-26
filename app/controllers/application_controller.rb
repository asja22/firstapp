class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def hello
      render html: "New Chapter - Learning Rails - First Application"
    end
end
