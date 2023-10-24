import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="options-table"
export default class extends Controller {
  static targets = [ "field", "option", "description" ];
  static values = { maxRoll: Number, default: 10 };
  
  pick(e) {
    const n = this.optionTargets.indexOf(e.currentTarget);
    
    this.doHighlight(n);
    this.doPick(n);
  }
  
  pickAtRandom() {
    const roll = Math.floor(Math.random() * this.maxRollValue) + 1;
    
    let minHighlights = Math.floor(Math.random() * 10);
    let highlightIndex = 0;
    let highlightRolls;

    const interval = setInterval(() => {
      highlightRolls = [...this.optionTargets[highlightIndex].querySelector("th").textContent.matchAll(/\d+/g)].flat();
      
      if (minHighlights < 1 && highlightRolls.includes(roll.toString())) {
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
    this.fieldTarget.value = pick.querySelector("td").textContent.split(/[\.\($]/)[0].trim(); // take only the first sentence/part
    this.descriptionTarget.textContent = pick.querySelector("td[data-role='description']").textContent;
  }
}
