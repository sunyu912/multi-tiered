<html ng-app="mt-webview">

<head>
    <title>Multi-tiered Benchmark Test</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.8/angular.min.js"></script>
    <script type="text/javascript">
	    <%-- var webviewApp = angular.module('mt-webview', []);
	
	    webviewApp.controller('WebViewCtrl', function ($scope, $http) {
	        $http.get('http://<%= dataEndpoint %>:8090/customer/').success(function(data) {
	            //console.log(data);
	            $scope.customers = data._embedded.customer;
	        });
	    }); --%>
    </script>
</head>

<body ng-controller="WebViewCtrl">
    <%= dataEndpoint %>
    <div ng-repeat="c in customers">
        <hr>
	    <label>First Name:</label>
	    <input type="text" ng-model="c.firstName" placeholder="Enter a name here">
	    <label>Last Name:</label>
        <input type="text" ng-model="c.lastName" placeholder="Enter a name here">
        <label>Address:</label>
        <input type="text" ng-model="c.address" placeholder="Enter a name here">
    </div>
</body>

</html>