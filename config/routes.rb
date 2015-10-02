Quotapp::Application.routes.draw do


match 'api/v1/quotes/discover' => 'quotes#discover'

end
 