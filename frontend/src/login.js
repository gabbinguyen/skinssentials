const usersURL = "http://localhost:3000/api/v1/users"
const productURL = 'http://localhost:3000/api/v1/products'
let usersList = [];
let userProducts = [];
let currentUser; 
let oily = []

document.addEventListener("DOMContentLoaded", () => {
    fetchUsers()
});

function fetchUsers(){
    fetch(usersURL)
    .then((resp) => (resp.json()))
    .then(renderUser)
}

function renderUser(users){
    users.forEach(user => {
        usersList.push(user.username)
    })
}

function fetchProducts(){
    fetch(productURL)
      .then(resp => resp.json())
      .then(renderUserProduct)
}

function renderUserProduct(products){
    products 
    products.forEach(product => {
        console.log(product.skin_type) 
    })
}

fetchProducts()

  // Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

const modalContent = document.querySelector(".modal-content")
const username = modalContent.querySelector("input[name='username']")
const submitBtn = modalContent.querySelector("button[class='button is-success']")
submitBtn.addEventListener('click', (event) => { 

    if(usersList.indexOf(username.value)!== -1) {
        currentUser = username.value
        modal.style.display = "none";
        document.body.innerHTML = "";
        displayUserView()
    } else {
        alert("This user does not exist, please try again.")
    }
})

function displayUserView(){
    const userProductContainer = document.querySelector(".user-product-container")
    const productCard = document.createElement("div")
    productCard.className = 'card'
    productCard.style = "width: 18rem;" 

}