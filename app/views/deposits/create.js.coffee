newItems = $('<%= escape_javascript(render(:partial => @deposit))%>')
$('#deposits').isotope 'insert', newItems
$('p.empty').hide()
$('form#new_deposit.new_deposit p input#deposit_amount').val ''
$('form#new_deposit.new_deposit p select#deposit_category').val '1'
$('form#new_deposit.new_deposit p textarea#deposit_description').val ''
