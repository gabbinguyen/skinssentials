document.addEventListener("DOMContentLoaded", () => {

});


  // Get the modal
  var suModal = document.getElementById("suModal");

  // Get the button that opens the modal
  var suBtn = document.getElementById("suBtn");
  
  // Get the <span> element that closes the modal
  var suSpan = document.getElementById("suClose");
  
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
  const suContent = document.getElementById("su modal-content")
  const createBtn = document.getElementById("create account")
  const name = suContent.querySelector("input[name='name']")
  const newUser = suContent.querySelector("input[name='username']")
  const dry = suContent.querySelector('input[name="dry"]')
  const oily = suContent.querySelector('input[name="oily"]')
  const normal = suContent.querySelector('input[name="normal"]')
  const combo = suContent.querySelector('input[name="combination"]')
  let skin_type;

createBtn.addEventListener('click', (event) => {
    if (dry.checked) {
        skin_type = dry.value;
        } else if (oily.checked) {
         skin_type = oily.value;
        } else if (normal.checked) {
        skin_type = normal.value; 
        } else {
        skin_type = combo.value;
        }
    event.preventDefault
    fetch(usersURL, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
        body: JSON.stringify({
            name: name.value,
            username: newUser.value,
            skin_type: skin_type
        })
    })
    .then(function(response) {
        return response.json();
      })
      .then(function(object) {
        currentUser = object
        userProducts = productsList.filter( function(product){return (product.skin_type==currentUser.skin_type)});
        suModal.style.display = "none";
        renderNewView()
      });
})