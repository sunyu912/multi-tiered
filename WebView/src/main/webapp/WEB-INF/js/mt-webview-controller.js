var webviewApp = angular.module('mt-webview', []);

webviewApp.controller('WebViewCtrl', function ($scope, $http) {
	$http.get('http://localhost:8090/customer/').success(function(data) {
		//console.log(data);
	    $scope.customers = data._embedded.customer;
	});
});