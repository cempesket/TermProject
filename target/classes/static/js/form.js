/**
 * Created by cem.pesket on 22.02.2017.
 */
var submitForm = function () {


    $.ajax({
        url: 'test.php',
        type : "POST",
        dataType : 'json',
        data : $("#form").serialize(),
        success : function(result) {
            console.log(result);
        },
        error: function(xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    })
}