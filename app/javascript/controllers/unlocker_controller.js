import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="unlocker"
export default class extends Controller {
  static outlets = [ "lock" ];
  static values = { "locked": Boolean };
  
  lock() {
    this.lockedValue = true;
  }
  
  unlock() {
    this.lockedValue = false;
  }
  
  lockedValueChanged() {
    this.lockOutlets.forEach(o => o.lockedValue = this.lockedValue);
  }
}
