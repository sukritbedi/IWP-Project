var app = angular.module("myApp",[]);

          app.controller("main", function($scope,$http){
            $http.get('fetchMovie.php')
            .then(function(response) {
              $scope.movies = response.data;
              console.log($scope.movies);
            })
          });
