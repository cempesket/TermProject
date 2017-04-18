/**
 * Created by cem.pesket on 9.03.2017.
 */

$(document).ready(function () {
        var total =0
        var subTotal
        var quantity=1
        var cart = JSON.parse(localStorage.getItem("cart"))
        var products = cart.products
        for (i = 0; i < products.length; i++) {
            var id = products[i].id;
            var name = products[i].name;
            var price = parseFloat(products[i].price);
            subTotal = price;
            total += price
            const htmlBody ='<tr>'+
                '<td data-th="Product">'+
                '<div class="row">'+
                '<div class="col-sm-2 hidden-xs">'+'<img src="http://placehold.it/100x100" alt="..." class="img-responsive"/>'+
                '</div>'+
                '<div class="col-sm-10">'+
                '<h4 class="nomargin">'+
                name+
                '</h4>'+
                '</div>'+
                '</div>'+
                '</td>'+
                '<td data-th="Price">'+
                price+
                '</td>'+
                '<td data-th="Quantity">'+
                quantity+
                '</td>'+
                '<td data-th="Subtotal" class="text-center">'+
                subTotal+
                '</td>'+
// '<td class="actions" data-th="">'+
// '<button class="btn btn-danger btn-sm">'+
// '<i class="fa fa-trash-o">'+
// '</i>'+
// '</button>'+
// '</td>'+
                '</tr>';

            $("#cart").append(htmlBody);



        }
        document.getElementById("total").innerHTML = "total "+total
        cart.total = total;

        $("#checkout").on('click', function () {
            $.ajax({

                type: "POST",
                url: "../Shop/checkout",
                // The key needs to match your method's input parameter
				// (case-sensitive).
                data: JSON.stringify(cart),
                contentType: "application/json;charset=utf-8",
                dataType: "text",
                beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
               
                success: function(data){
                        
                    window.location.href = "../Shop/payment"
                    
                },
                failure: function(errMsg) {
                    alert(errMsg);
                }
            }).then(function(data) {
            	console.log("t");
            });
        })
    }
);
