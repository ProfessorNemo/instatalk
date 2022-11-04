import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"

import 'bootstrap/js/dist/dropdown'
Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(function() {
    console.log('Document is loaded');
});

$(document).on("turbolinks:load", function() {
    console.log('Document is loaded (turbolinks:load)');
})