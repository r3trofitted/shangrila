import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="options-table"
export default class extends Controller {
  static targets = [ "field", "option" ];
  
  pick(e) {
    const n = this.optionTargets.indexOf(e.currentTarget);
    
    this.doHighlight(n);
    this.doPick(n);
  }
  
  pickAtRandom() {
    const pickIndex = Math.floor(Math.random() * this.optionTargets.length);
    
    let iterations = Math.floor(Math.random() * 10);
    let highlightIndex = 0;

    const interval = setInterval(() => {
      if (iterations > 0 || highlightIndex != pickIndex) {
        iterations--;
        
        highlightIndex = (highlightIndex + 1) % this.optionTargets.length;
        this.doHighlight(highlightIndex);
      } else {
        this.doPick(pickIndex);
        clearInterval(interval);
      }
    }, 50);
  }

  doHighlight(n) {
    this.optionTargets.forEach(t => t.classList.remove("selected"));
    this.optionTargets[n].classList.add("selected");
  }
  
  doPick(n) {
    const pick = this.optionTargets[n];
    this.fieldTarget.value = pick.querySelector("td").firstChild.nodeValue.trim(); // ignore extra elements in the cell, such as <i>
  }
}
