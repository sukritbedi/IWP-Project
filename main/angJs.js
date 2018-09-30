var app = angular.module("myApp",[]);

          app.filter("age", function(){
              return function (goit){
                  switch(goit){
                      case "0":
                        return "U";
                      case "1":
                        return "A";
                      case "2":
                        return "U/A"
                  }
              }
          })

          app.controller("movie_all", function($scope,$http,$rootScope){
            $rootScope.main = true;

            $http.get('fetchMovie.php')
            .then(function(response) {
              $scope.movies = response.data;
              console.log($scope.movies);
            })

            $scope.moviebook1 = function(mov_id) {
              $rootScope.main = false;
              $rootScope.moviesel = true;

              $http({
  							method:'post',
  							url:'movie_select.php',
  							data: {'mov_id':mov_id}
  						})
              .then(function(response) {
                $rootScope.movie_selected = response.data;
                console.log($rootScope.movie_selected);
              })

            }
          })

          app.controller("movie_sel", function($scope, $rootScope, $http) {

          });
