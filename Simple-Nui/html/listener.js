$(function(){
	window.onload = function (e) {
		window.addEventListener("message", (event) => {
			var item = event.data;
			if(item !== undefined && item.type === "ui"){
				if (item.display === true){
					$("#container").show();
				} else{
					$("#container").hide();
				}
			}
		})
	}
})


$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }
    
    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://nui/exit', JSON.stringify({}));
            return
        }
    };

    $("#exit").click(function () {
        $.post('https://backtobasics-tutorial/exit', JSON.stringify({}));
        return
    })
})
