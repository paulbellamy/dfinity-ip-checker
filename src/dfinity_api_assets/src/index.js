import { dfinity_api } from "../../declarations/dfinity_api";

document.getElementById("clickMeBtn").addEventListener("click", async () => {
  const name = document.getElementById("name").value.toString();
  // Interact with dfinity_api actor, calling the greet method
  const greeting = await dfinity_api.greet(name);

  document.getElementById("greeting").innerText = greeting;
});
