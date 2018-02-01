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

  #erb method hides all the details of executing
  #the template from us, and also accepts a template.
  #We can achieve exactly the same thing without spelling
  #out the ERB.new(...).result(binding) noise

  # get '/monstas/:name' do
  #   erb "<h1>Hello <%= params[:name] %></h1>", {locals: params}
  # end

  #If we specify a key :locals and give it another hash, then
  #Sinatra will make each key/value pair on this hash available
  #as local variables (thus “locals”) in our ERB template.

  #layout templates save repititive typing when you need to reuse code for
  #multiple routes

  # get '/monstas/:name' do
  #   template = "<h1>Hello <%= name %></h1>"
  #   layout   = "<html><body><%= yield %></body></html>"
  #   erb template, { :locals => params, :layout => layout }
  # end

  #yield keyword is where the template is passed through

  # get '/monstas/:name' do
  #   erb :monstas, { :locals => params, :layout => :layout }
  # end
  #
  # #we can also even omit the layout option key because Sinatra assumes we
  # #want a layout and finds one in the views directory:
  #
  # get '/monstas/:name' do
  #   erb :monstas, { :locals => params }
  # end

  #instance variables save typing and are the 'Rails way' of passing data to templates(views)
  get 'monstas/:name' do
    @name = params["name"]
    erb :monstas
  end
end
