class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/nav1" do
    { message: "Hello from nav1!" }.to_json
  end

  get "/nav2" do
    { message: "Hello from nav2!" }.to_json
  end

end
