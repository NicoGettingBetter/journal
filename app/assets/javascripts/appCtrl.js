let app = angular.module('appModule', ['ng-rails-csrf']);
  
app.controller('AppCtrl', ['$scope', '$http', function($scope, $http){ 
  $scope.auth = function (login, password) {

    let object = {
      sign_in: {
        login: login,
        password: password
      }
    };

    let req = {
      headers: {
        'Content-Type': 'application/json; charset=utf-8'
      }
    };

    $http.post('/auth/sign_in.json', object, req).then(
      function(res) {
        console.log(res);
        $scope.headers = res.headers;
      }, // success 
      function(res) { console.log(res); }  // error
    );
  };

  $scope.createSubject = function (subjectName) {

    if (!$scope.subjectCreate.$valid)
      return;

    let subject = {
      name: subjectName
    };

    let req = {
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'access-token': $scope.headers('access-token'),
        'client': $scope.headers('client'),
        'expiry': $scope.headers('expiry'),
        'uid': $scope.headers('uid'),
        'token-type': $scope.headers('token-type')
      }
    };

    $http.post('/subjects.json', subject, req).then(
      function(res) { console.log(res); }, // success 
      function(res) { console.log(res); }  // error
    );

  };
}]);
