var app = angular.module("myApp",[]);

app.controller("sidebar", function($scope,$rootScope){
  $rootScope.amov = true;
  $rootScope.umov = false;
  $rootScope.trans = false;
  $rootScope.user = false;
  $scope.addMov = function() {
    $rootScope.amov = true;
    $rootScope.umov = false;
    $rootScope.trans = false;
    $rootScope.user = false;
  }
  $scope.updateMov = function() {
    $rootScope.amov = false;
    $rootScope.umov = true;
    $rootScope.trans = false;
    $rootScope.user = false;
  }
  $scope.viewTrans = function() {
    $rootScope.amov = false;
    $rootScope.umov = false;
    $rootScope.trans = true;
    $rootScope.user = false;
  }
  $scope.viewUsers = function() {
    $rootScope.amov = false;
    $rootScope.umov = false;
    $rootScope.trans = false;
    $rootScope.user = true;
  }
})

app.controller("amovie", function($scope, $http, $rootScope) {
  $http.get('fetchMovie.php')
  .then(function(response) {
    $scope.movs = response.data;
    console.log($scope.movs);
  })
})

app.controller("transactions", function($scope,$http,$rootScope){
  $http.get('fetchTrans.php')
  .then(function(response) {
    $scope.transactions = response.data;
    console.log($scope.transactions);
  })
});
