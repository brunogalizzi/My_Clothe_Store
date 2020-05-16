// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {

});
var item2 = ''
document.querySelectorAll('.card-img-top').forEach(item => {
  item.addEventListener('mouseover', event => {
    item2 = item.src;
    mouseOver(item);
    //handle click
  })
})
document.querySelectorAll('.card-img-top').forEach(item => {
  item.addEventListener('mouseout', event => {
    mouseOut(item, item2);
  })
})
  function mouseOver(item) {
    item.src='https://source.unsplash.com/random';
  }

  function mouseOut(item, item2) {
    item.src=item2;
  }

  // Call your functions here, e.g:
  // initSelect2();
  // var type = document.getElementById("product_type_id");
  // type.addEventListener('change', (target) => {
  // console.log(type.value);
  // return $.ajax({
  //     url: '/products/set_type/' + type.value,
  //     type: 'GET',
  //     data: {
  //       code: $('#product_size').val()
  //     },
  //     success: function(data, event, status, xhr, response) {
  //       $('#user_id').html(response);
  //       console.log('success');
  //       return $("#user_id").show();
  //     },
  //     error: function(event, data, status, xhr, response) {
  //       $('#user_id').html(response);
  //       console.log('fail')
  //       return $("#user_id").show();
  //     }
  //   });
  // });


