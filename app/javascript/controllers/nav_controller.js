import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "burger"]

  toggle() {
    const open = this.menuTarget.classList.toggle("nav-mobile-open")
    this.burgerTarget.classList.toggle("is-open", open)
  }

  close() {
    this.menuTarget.classList.remove("nav-mobile-open")
    this.burgerTarget.classList.remove("is-open")
  }
}
