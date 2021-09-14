class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/home" do
    { message: "Hello from Home!" }.to_json
  end

  get "/patients" do
    # doctors = Doctor.all
    # doctors.to_json(include: :patients)
  end
  
  get "/calendar" do
    { message: "Hello from nav2!" }.to_json
  end
  
  get "/login" do
    doctors = Doctor.all
    doctors.to_json(include: :patients)
  end

end

