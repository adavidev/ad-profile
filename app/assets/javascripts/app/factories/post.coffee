app.factory('Post', ['$resource',
    ($resource) ->
        return $resource('posts/:postId.json', {}, {
          query: {method:'GET', isArray:true}
          
        });
    ]);
