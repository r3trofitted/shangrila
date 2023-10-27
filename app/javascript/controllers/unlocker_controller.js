import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="unlocker"
export default class extends Controller {
  static outlets = [ "lockable" ];
  static values = { "locked": Boolean };
  
  lock() {
    this.lockedValue = true;
  }
  
  unlock() {
    this.lockedValue = false;
  }
  
  lockedValueChanged() {
    this.lockableOutlets.forEach(o => o.lockedValue = this.lockedValue);
  }
}
