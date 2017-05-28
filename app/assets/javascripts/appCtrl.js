let app = angular.module('appModule', []);
  
app.controller('AppCtrl', ['$scope', '$http', function($scope, $http){ 
  $scope.createSubject = function (subjectName) {

    if (!$scope.subjectCreate.$valid)
      return;

    let subject = {
      name: subjectName
    };

    let req = {
      headers: {
        'Content-Type': 'application/json; charset=utf-8'
      }
    };

    $http.post('/subjects.json', subject, req).then(
      function(res) { console.log(res);}, // success 
      function(res) { console.log(res);   // error
    });

    };

}]);
