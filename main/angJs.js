var app = angular.module("myApp",[]);

          app.filter("age", function(){
              return function (goit){
                  switch(goit){
                      case "1":
                        return "A";
                      case "2":
                        return "U/A"
                  }
              }
          })

          app.controller("main", function($scope,$http){
            $http.get('fetchMovie.php')
            .then(function(response) {
              $scope.movies = response.data;
              console.log($scope.movies);
            })
          });
