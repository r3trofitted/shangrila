import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lockable"
export default class extends Controller {
  static targets = [ "field" ];
  static values = {
    locked: { type: Boolean }
  }

  connect() {
    // this.disabledValue = this.fieldTarget.disabled; /* the input field has precedence over the value */
  }
  
  lockedValueChanged() {
    this.lockedValue ? this.lock() : this.unlock();
  }

  lock() {
    this.fieldTargets.forEach(t => t.disabled = true);
    this.element.classList.add("disabled");
  }
  
  unlock() {
    this.fieldTargets.forEach(t => t.disabled = false);
    this.element.classList.remove("disabled");
  }
}
