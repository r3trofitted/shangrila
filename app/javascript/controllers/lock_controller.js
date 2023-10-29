import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lock"
export default class extends Controller {
  static targets = [ "input" ];
  static values = {
    locked: { type: Boolean }
  }
  
  lockedValueChanged() {
    this.lockedValue ? this.lock() : this.unlock();
  }

  lock() {
    this.inputTargets.forEach(t => t.disabled = true);
    this.element.classList.add("locked");
  }
  
  unlock() {
    this.inputTargets.forEach(t => t.disabled = false);
    this.element.classList.remove("locked");
  }
}
