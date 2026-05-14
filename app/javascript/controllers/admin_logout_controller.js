import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    document.querySelectorAll("[data-logout-url]").forEach(btn => {
      btn.addEventListener("click", (e) => {
        e.preventDefault()
        const url = btn.dataset.logoutUrl
        const csrf = btn.dataset.csrf

        fetch(url, {
          method: "DELETE",
          headers: {
            "X-CSRF-Token": csrf,
            "Authorization": "Basic " + btoa("__logout__:__logout__")
          }
        }).finally(() => {
          window.location.href = "/"
        })
      })
    })
  }
}
