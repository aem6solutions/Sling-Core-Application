  $(document).ready(function() {
      $("#order_coffee").click(function () {
          var coffee=$('#type_coffee').val();
          var sugar=$('#type_sugar').val();
          var milk=$('#type_milk').val();
          $.ajax({
              type: "GET",
              dataType:"json",
              url: "/bin/service/calculate",
              data: {'coffee': coffee,
                  'milk': milk,
                  'sugar':sugar
              },
              complete: function (xhr, status) {
                  if (status === 'error' || !xhr.responseText) {
                      console.log(status);
                      handleError();
                  }
                  else {
                      var data = xhr.responseText;
                      var parseResult = jQuery.parseJSON(data);
                      console.log(parseResult);
                      console.log(parseResult.bill);
                      $('div[id="bill_content"]').append("<h1 class='orderCoffeeSubHeads'>Your Total Bill Is:</h1><h3 class='orderCoffeeBill'>" + parseResult.bill + "</h3>");
                  }
              }
          });
      });
  });

