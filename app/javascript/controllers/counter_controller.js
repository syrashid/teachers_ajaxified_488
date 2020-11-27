import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "count" ]

  connect() {
    setInterval(this.asyncRefresh, 3000);
  }

  // The below is done with async/await as opposed to your normal fetch syntax
  asyncRefresh = async () => {
    const response = await fetch('/teachers', { headers: { accept: "application/json" } });
    const data = await response.json();
    this.countTarget.innerText = data.teachers.length;
    console.log("Hey, I've been refreshed, but now with async/await! 🎉");
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
