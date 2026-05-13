import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const els = document.querySelectorAll(
      ".section-head, .profil-grid, .pendekatan-item, .karya-item, .saatini-card, .manifesto-text"
    )

    els.forEach(el => el.classList.add("reveal"))

    const io = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add("in")
          io.unobserve(entry.target)
        }
      })
    }, { threshold: 0.12, rootMargin: "0px 0px -60px 0px" })

    els.forEach(el => io.observe(el))
  }
}
