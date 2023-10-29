import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="field"
export default class extends Controller {
  static targets = [ "input", "description" ];
  
  fill({ value, description }) {
    this.inputTarget.value = value;
    this.descriptionTarget.textContent = description;
  }
}
