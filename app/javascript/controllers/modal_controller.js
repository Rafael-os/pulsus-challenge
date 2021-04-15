import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    console.log("The Zelda controller is now loaded!");
  }
}