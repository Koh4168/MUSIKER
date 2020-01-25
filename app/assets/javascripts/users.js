// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require twitter/bootstrap
//= require bootstrap-material-design
//= require activestorage
//= require turbolinks
//= require_tree .

function socialHover(e) {
  console.log(e.type);
  var social = document.getElementById('social-container');
  var spanArray = social.getElementsByTagName('span');
  var spanWidths = [];

  for (var i = 0; i < spanArray.length; i++) {
    spanWidths.push(spanArray[i].clientWidth);
  }

  var socialId = e.target.dataset.socialId;
  if (e.type == 'mouseenter') {
    e.target.style.width = (spanWidths[socialId] + 50) + 'px';
  } else {
    e.target.style.width = '38px';
  }
}

window.onload = function() {

  var socialButtons = document.getElementsByClassName('social-button');
  for (var i = 0; i < socialButtons.length; i++) {
    socialButtons[i].setAttribute('data-social-id', i);
    socialButtons[i].addEventListener('mouseenter', function() { socialHover(event); });
    socialButtons[i].addEventListener('mouseleave', function() { socialHover(event); });
  }
}
