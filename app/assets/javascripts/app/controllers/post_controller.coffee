ctrl = app.controller("MainController", [
    "$scope",
    "$resource",
    "$sce",
    "Post",
    "Activity"
    ($scope, $resource, $sce, Post, Activity) ->
        
        $scope.posts = Post.query(-> 
            $scope.select($scope.posts[0])
        );
        
        $scope.select = (post) -> 
            $scope.selected_post = post;
            Activity.store(post);
        
        $scope.oldPost = (post) ->
            return Activity.get().filter(( obj ) ->
                return JSON.stringify(obj) == JSON.stringify(post)
            ).length > 0;
    ]);

app.filter('html', ($sce)->
    return (val)->
        return $sce.trustAsHtml(val);
)