document.addEventListener("DOMContentLoaded", () => {
    console.log("abc")
});


  // Get the modal
  var suModal = document.getElementById("suModal");

  // Get the button that opens the modal
  var suBtn = document.getElementById("suBtn");
  
  // Get the <span> element that closes the modal
  var suSpan = document.getElementById("suClose");
  console.log(suSpan)
  
  // When the user clicks on the button, open the modal
  suBtn.onclick = function() {
    suModal.style.display = "block";
  }
  
  // When the user clicks on <span> (x), close the modal
  suSpan.onclick = function() {
    suModal.style.display = "none";
  }
  
  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == suModal || event.target == modal ) {
        suModal.style.display = "none";
        modal.style.display = "none";
    }
  }

  const createBtn = document.getElementById("create account")
  console.log(createBtn)