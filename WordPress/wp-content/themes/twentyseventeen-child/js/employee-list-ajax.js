jQuery(document).ready(function() {
    jQuery.ajax({
        type: 'POST',
        url: ajaxurl,
        data: {
          'action': 'displayEmployeeList'
        }, success: function(result) {
            var employeeBox = jQuery('#contact--employees__holder');
            var content = JSON.parse(result);
            employeeBox.append(content);
        }
    })
});