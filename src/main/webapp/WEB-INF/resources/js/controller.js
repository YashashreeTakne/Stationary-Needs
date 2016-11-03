var app = angular.module("app",[])
.controller('myController',function($scope,$http){

	$scope.productList = function(){
		   $http.get('http://localhost:8080/MainProject/product/productList').success(function (data){
		       $scope.products = data;
		   });
		};
});

var myapp=angular.module("myapp",[])
.controller('productsController',function($scope,$http){
		
	$scope.getProducts=function(){
		$http.get('http://localhost:8080/MainProject/product/productList').success(function(data){
			$scope.product1=data;
		})
	}

	$scope.addToCart=function(productId){
		   $http.put('http://localhost:8080/MainProject/cart/add/'+productId).success(function(){
			   alert('Added Successfully to the cart!');
		   })
	   }
	
        $scope.refreshCart=function(){
    	$http.get('http://localhost:8080/MainProject/cart/getCart/'+$scope.cartId).success(function(data){
    		$scope.cart=data;
    	})
        } 

        $scope.getCart=function(cartId){
    	$scope.cartId=cartId;
//    	$scope.refreshCart(cartId);
       	$scope.refreshCart();
    	alert('Successfully refreshed the cart!');
        }

        $scope.removeFromCart=function(cartItemId){
    		$http.put('http://localhost:8080/MainProject/cart/removecartitem/'+cartItemId)
    	.success(function(){
    		$scope.refreshCart();
    		alert('Removed Successfully from the cart!');
    	})
        }

        $scope.clearCart=function(){
    		$http.put('http://localhost:8080/MainProject/cart/removeAllItems/'+$scope.cartId)
    	.success(function(){
    		$scope.refreshCart();
    		alert('Successfully cleared the cart!');
    	});
        }

        $scope.calculateGrandTotal=function(){
    	var grandTotal=0.0
    	for(var i=0;i<$scope.cart.cartItems.length;i++)
    		grandTotal=grandTotal+$scope.cart.cartItems[i].totalPrice;
//    	alert('calculated grandTotal ...');
    	return grandTotal;
    }
});

var myapp=angular.module("mysapp",[])
.controller('suppliersController',function($scope,$http){
		
	$scope.getProducts=function(){
		$http.get('http://localhost:8080/MainProject/supplier/getAllSupplier').success(function(data){
			$scope.supplier1=data;
		});
	};
});

var app = angular.module("myssapp",[])
.controller('mysController',function($scope,$http){

	$scope.getSuppliers = function(){
		   $http.get('http://localhost:8080/MainProject/supplier/getAllSupplier').success(function (data){
		       $scope.suppliers = data;
		   });
		};
});
//	http://localhost:8080/welcomehelloworld/getBooksList