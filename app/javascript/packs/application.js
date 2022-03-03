
import "@hotwired/turbo-rails"
require("@hotwired/stimulus")
import "bootstrap"
import "../controllers"
import "../stylesheets/application"
require("@popperjs/core")
console.log("here")
import { Tooltip  } from "bootstrap"
console.log("here")
require("../stylesheets/application.scss")
console.log("here")
// document.addEventListener("turbolinks:load", () => {
//   console.log("here")
//   // Both of these are from the Bootstrap 5 docs
//   var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
//   var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
//       return new Tooltip(tooltipTriggerEl)
//   })
// })