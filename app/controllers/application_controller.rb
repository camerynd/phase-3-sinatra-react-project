class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Hello from Home!" }.to_json
  end

  get "/patients" do
    patients = Patient.all
    patients.to_json(include: :doctor)
  end
  
  get "/nav2" do
    { message: "Hello from nav2!" }.to_json
  end
  
  get "/login" do
    { message: "Hello login!",
      message2: "Hi login!" }.to_json
  end

end

