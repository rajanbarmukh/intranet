# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

 $("#user_manager_id").parent().parent().hide()
 $(document).ready ->
   drop = $("#user_roles").bind 'change', (e) ->
     if $(this).val() == "Employee"
       $("#user_manager_id").parent().parent().show() 
     else
       $("#user_manager_id").parent().parent().hide()
   $('.datepicker').datepicker({
     dateFormat: "dd/mm/yy",  
     changeMonth: true,
     changeYear: true
   })