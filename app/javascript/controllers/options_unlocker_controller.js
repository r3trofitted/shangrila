import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="options-unlocker"
export default class extends Controller {
  static outlets = [ "options-table" ];
  static values = { "locked": Boolean };
  
  lock() {
    this.lockedValue = true;
  }
  
  unlock() {
    this.lockedValue = false;
  }
  
  lockedValueChanged() {
    this.optionsTableOutlet.disabledValue = this.lockedValue;
  }
}
