import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="options-carousel"
export default class extends Controller {
  static targets = [ "field" ];

  connect() {
    this.selectedIndex = -1;
    this.options = this.fieldTarget.list.options;
    this.fieldTarget.removeAttribute("list");
  }
  
  prev() {
    this.selectedIndex = (this.selectedIndex - 1) % this.options.length;
    this.updateSelection();
  }
  
  next() {
    this.selectedIndex = (this.selectedIndex + 1) % this.options.length;
    this.updateSelection();
  }
  
  updateSelection() {
    this.fieldTarget.value = this.options[this.selectedIndex].value;
  }
}