/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $('.submit-order').on('click', function(){
       var id = $(this).data('id');
       id=id+1;
       alert(id+1);
    });
});

