import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "count" ]

  connect() {
    setInterval(this.refresh, 3000);
  }

  refresh = () => {
    // 1 Perform a fetch request to get the number of teachers
    fetch('/teachers', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        // 2 Splice in the number of teachers into our target
        this.countTarget.innerText = data.teachers.length;
      });
    console.log("Hey, I've been refreshed! 🎉")

  }
}
