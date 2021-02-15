# README for pandabize's Backend


## API available and testable throught Postman.
### skip_before_action :verify_authenticity_token has been added to allow Postman testing

### ERD/DB schema documentation : pandabize.pdf

GET    /api/v1/bikes/:bike_id/options/:option_id/values(.:format)                               api/v1/values#index

POST   /api/v1/bikes/:bike_id/options/:option_id/values(.:format)                               api/v1/values#create

GET    /api/v1/bikes/:bike_id/options/:option_id/values/:id(.:format)                           api/v1/values#show

PUT    /api/v1/bikes/:bike_id/options/:option_id/values/:id(.:format)                           api/v1/values#update

DELETE /api/v1/bikes/:bike_id/options/:option_id/values/:id(.:format)                           api/v1/values#destroy

GET    /api/v1/bikes/:bike_id/options(.:format)                                                 api/v1/options#index

POST   /api/v1/bikes/:bike_id/options(.:format)                                                 api/v1/options#create

GET    /api/v1/bikes/:bike_id/options/:id(.:format)                                             api/v1/options#show

PUT    /api/v1/bikes/:bike_id/options/:id(.:format)                                             api/v1/options#update

DELETE /api/v1/bikes/:bike_id/options/:id(.:format)                                             api/v1/options#destroy

GET    /api/v1/bikes(.:format)                                                                  api/v1/bikes#index

POST   /api/v1/bikes(.:format)                                                                  api/v1/bikes#create

GET    /api/v1/bikes/:id(.:format)                                                              api/v1/bikes#show

PUT    /api/v1/bikes/:id(.:format)                                                              api/v1/bikes#update

DELETE /api/v1/bikes/:id(.:format)                                                              api/v1/bikes#destroy

GET    /api/v1/options(.:format)                                                                api/v1/options#index

POST   /api/v1/options(.:format)                                                                api/v1/options#create

GET    /api/v1/options/:id(.:format)                                                            api/v1/options#show

PUT    /api/v1/options/:id(.:format)                                                            api/v1/options#update

DELETE /api/v1/options/:id(.:format)                                                            api/v1/options#destroy

GET    /api/v1/values(.:format)                                                                 api/v1/values#index

POST   /api/v1/values(.:format)                                                                 api/v1/values#create

GET    /api/v1/values/:id(.:format)                                                             api/v1/values#show

PUT    /api/v1/values/:id(.:format)                                                             api/v1/values#update

DELETE /api/v1/values/:id(.:format)  

# Deploy en Heroku  : 