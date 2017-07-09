       Prefix Verb   URI Pattern                  Controller#Action
         root GET    /                            homes#index
     sessions POST   /sessions(.:format)          sessions#create
  new_session GET    /sessions/new(.:format)      sessions#new
     sign_out DELETE /sign_out(.:format)          sessions#destroy
profile_index GET    /profile(.:format)           profile#index
              POST   /profile(.:format)           profile#create
  new_profile GET    /profile/new(.:format)       profile#new
 edit_profile GET    /profile/:id/edit(.:format)  profile#edit
      profile GET    /profile/:id(.:format)       profile#show
              PATCH  /profile/:id(.:format)       profile#update
              PUT    /profile/:id(.:format)       profile#update
              DELETE /profile/:id(.:format)       profile#destroy
        users GET    /users(.:format)             users#index
              POST   /users(.:format)             users#create
     new_user GET    /users/new(.:format)         users#new
    edit_user GET    /users/:id/edit(.:format)    users#edit
         user GET    /users/:id(.:format)         users#show
              PATCH  /users/:id(.:format)         users#update
              PUT    /users/:id(.:format)         users#update
              DELETE /users/:id(.:format)         users#destroy
        posts GET    /posts(.:format)             posts#index
              POST   /posts(.:format)             posts#create
     new_post GET    /posts/new(.:format)         posts#new
    edit_post GET    /posts/:id/edit(.:format)    posts#edit
         post GET    /posts/:id(.:format)         posts#show
              PATCH  /posts/:id(.:format)         posts#update
              PUT    /posts/:id(.:format)         posts#update
              DELETE /posts/:id(.:format)         posts#destroy
     comments GET    /comments(.:format)          comments#index
              POST   /comments(.:format)          comments#create
  new_comment GET    /comments/new(.:format)      comments#new
 edit_comment GET    /comments/:id/edit(.:format) comments#edit
      comment GET    /comments/:id(.:format)      comments#show
              PATCH  /comments/:id(.:format)      comments#update
              PUT    /comments/:id(.:format)      comments#update
              DELETE /comments/:id(.:format)      comments#destroy
