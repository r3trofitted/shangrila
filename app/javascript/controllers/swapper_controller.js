import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="swapper"
export default class extends Controller {
  static outlets = [ "swappable" ];
  
  trigger({ detail: { value } }) {
    this.swappableOutlet.activeValue = value; // value is the data-swap-id
  }
}
