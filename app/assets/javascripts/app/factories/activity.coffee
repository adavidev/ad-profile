app.factory('Activity', [ 
    ->
        return {
            actions: ->
                current = this.get()
                if (Array.isArray(current))
                    return current
                else
                    return []
            ,
            store: (json)->
                actions = this.actions()
                actions.push(json)
                localStorage.setItem("current-session", JSON.stringify(actions));
            ,
            get: ->
                return JSON.parse(localStorage.getItem("current-session"));
            getRaw: ->
                return localStorage.getItem("current-session");
        }
    ])