NavEmployeeHighlights::Engine.routes.draw do
  get '/*id' => 'employees#show'
end
