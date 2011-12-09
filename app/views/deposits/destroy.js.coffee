
destroyItems = $('#<%= dom_id(@deposit) %>')

$("#deposits").isotope 'remove', destroyItems
$("#deposits").isotope 'reLayout'
