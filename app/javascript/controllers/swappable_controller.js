import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="swapper"
export default class extends Controller {
  static targets = [ "swap" ];
  static values = {
    active: String
  }
  
  connect() {
    if (!this.mainValue && this.hasSwapTarget) {
      this.activeValue = this.swapTargets[0].dataset.swapId;
    }
  }
  
  activeValueChanged() {
    this.swapTargets.forEach((e) => {
      e.style.display = (e.dataset.swapId == this.activeValue ? "revert" : "none");
    })
    this.dispatch("swapped");
  }
}
