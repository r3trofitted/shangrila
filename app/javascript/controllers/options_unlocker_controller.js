import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="options-unlocker"
export default class extends Controller {
  static outlets = [ "options-table" ];
  
  connect() {
    this.lock();
  }
  
  lock() {
    this.optionsTableOutlet.disabledValue = true;
  }
  
  unlock() {
    this.optionsTableOutlet.disabledValue = false;
  }
}
