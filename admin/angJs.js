var app = angular.module("myApp",[]);

app.controller("sidebar", function($scope,$rootScope){
  $rootScope.amov = true;
  $rootScope.umov = false;
  $rootScope.trans = false;
  $scope.addMov = function() {

  }
  $scope.updateMov = function() {

  }
  $scope.viewTrans = function() {

  }
})

app.controller("amovie", function($scope, $http, $rootScope) {
  $http.get('fetchMovie.php')
  .then(function(response) {
    $scope.movs = response.data;
    console.log($scope.mov);
  })
})

app.controller("transactions", function($scope,$http,$rootScope){
  $http.get('fetchTrans.php')
  .then(function(response) {
    $scope.transactions = response.data;
    console.log($scope.transactions);
  })
});
