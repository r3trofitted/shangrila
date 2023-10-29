import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="table-picker"
export default class extends Controller {
  static outlets = [ "lockable", "field" ];
  static targets = [ "option" ];
  static values = {
    maxRoll: { type: Number, default: 10 }
  };

  get isDisabled() {
    return this.hasLockableOutlet && this.lockableOutlet.lockedValue;
  }
  
  pick(e) {
    if (this.isDisabled) {
      return;
    }
  
    const n = this.optionTargets.indexOf(e.currentTarget);
    
    this.doHighlight(n);
    this.doPick(n);
  }
  
  pickAtRandom() {
    if (this.isDisabled) {
      return;
    }
    
    const roll = String(Math.floor(Math.random() * this.maxRollValue) + 1);
    
    let minHighlights = Math.floor(Math.random() * 10);
    let highlightIndex = 0;
    let highlightRolls;
  
    const interval = setInterval(() => {
      highlightRolls = [...this.optionTargets[highlightIndex].querySelector("th").textContent.matchAll(/\d+/g)].flat();
      
      if (minHighlights < 1 && highlightRolls.includes(roll)) {
        this.doPick(highlightIndex);
        clearInterval(interval);
      } else {
        minHighlights--;
        
        highlightIndex = (highlightIndex + 1) % this.optionTargets.length;
        this.doHighlight(highlightIndex);
      }
    }, 50);
  }
  
  doHighlight(n) {
    this.optionTargets.forEach(t => t.classList.remove("selected"));
    this.optionTargets[n].classList.add("selected");
  }
  
  doPick(n) {
    const pick = this.optionTargets[n];
    
    let value = pick.querySelector("td").textContent.split(/[\.\($]/)[0].trim(); // take only the first sentence/part
    let description = pick.querySelector("td[data-role='description']").textContent;
    
    // this.dispatch("picked", {
    //   detail: {
    //     value: value,
    //     description: description
    //   }
    // });
    
    this.fieldOutlet.fill({ value, description });
  }
}
