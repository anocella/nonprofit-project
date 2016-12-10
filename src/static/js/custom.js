$(function() {
	var query = $('#query');
	var key = $('#key');

    $(query).submit(function(event) {
    	event.preventDefault();
        $.ajax({
            url: '/score',
            data: $(key).serialize(),
            type: 'POST',
            success: function(response) {
                console.log(response.revenue_growth);
                // $('#total_score').text(response.revenue_growth);
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
});