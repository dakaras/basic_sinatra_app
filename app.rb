class Application < Sinatra::Base

  get "/" do
    "OMG, hello Ruby Monstas!"
  end

  get '/signup' do
    "Here you can signup.."
  end

  get '/signin' do
    "Enter login info."
  end

  # get "/monstas/:name" do
  #   ERB.new("<h1>Hello <%= params[:name] %></h1>").result(binding)
  #   #{}"Hello #{params["name"]}!"
  #   #params.inspect
  # end

  #Sinatra also has built-in support for ERB templates
  #(“views”). We can achieve exactly the same thing without spelling
  #out the ERB.new(...).result(binding) noise

  get '/monstas/:name' do
    erb "<h1>Hello <%= params[:name] %></h1>", {locals: params}
  end
end
