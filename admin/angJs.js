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

app.filter("usertype", function(){
    return function (goit){
        switch(goit){
            case "0":
              return "User";
            case "1":
              return "Admin";
        }
    }
})

app.filter("cinema", function(){
    return function (goit){
        switch(goit){
            case "1":
              return "Sri Vishnu Cinema";
            case "2":
              return "PVR: Velocity, Silk Mill";
        }
    }
})

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
    $rootScope.movs = response.data;
    console.log($scope.movs);
  })
})

app.controller("umovie", function($scope, $http, $rootScope) {
  $scope.update=true;
  $scope.umov = function(id,name,runtime,imdb,rt,age,desc) {
    $scope.update = false;
    $scope.id = id;
    $scope.name = name;
    $scope.runtime = runtime;
    $scope.imdb = imdb;
    $scope.rt = rt;
    $scope.desc = desc;
    $scope.age = age;
  }

  $scope.back = function() {
    $scope.update=true;
  }

  $scope.updatemovie = function() {
    $http({
      method:'post',
      url:'upmov.php',
      data: {'movid':$scope.id,'name':$scope.name,'runtime':$scope.runtime,'imdb':$scope.imdb,'rt':$scope.rt,'desc':$scope.desc,'age':$scope.age}
    })
    .success(function(data) {
      alert(data);
      $http.get('fetchMovie.php')
      .then(function(response) {
        $rootScope.movs = response.data;
        console.log($scope.movs);
      })
    })
  }
})

app.controller("transactions", function($scope,$http,$rootScope){
  $http.get('fetchTrans.php')
  .then(function(response) {
    $scope.transactions = response.data;
    console.log($scope.transactions);
  })
})

app.controller("userdata", function($scope,$http,$rootScope){
  $http.get('userAll.php')
  .then(function(response) {
    $scope.users = response.data;
    console.log($scope.users);
  })

  $scope.update=true;

  $scope.useru = function(id, name, phnum, email, pass, type) {
    $scope.id = id;
    $scope.name = name;
    $scope.email = email;
    $scope.phnum = phnum;
    $scope.pass = pass;
    $scope.type = type;
    $scope.update=false;
  }

  $scope.back = function() {
    $scope.update=true;
  }
});
