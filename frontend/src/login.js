const usersURL = "http://localhost:3000/api/v1/users"
const productURL = 'http://localhost:3000/api/v1/products'
let usersListNames = [];
let usersList = [];
let userProducts = [];
let currentUser; 
let categories = [];
let Dry = []
let Oily = []
let Combination = []
let Normal = []

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
        usersListNames.push(user.username)
    })
    usersList = users
}

function fetchProducts(){
    fetch(productURL)
      .then(resp => resp.json())
      .then(renderUserProducts)}

function renderUserProducts(products){ 
    Dry = products.filter( function(product){return (product.skin_type=="Dry")} );
    Oily = products.filter( function(product){return (product.skin_type=="Oily")} );
    Combination = products.filter( function(product){return (product.skin_type=="Combination")} );
    Normal = products.filter( function(product){return (product.skin_type=="Normal")} );
    categories.push(Dry, Oily, Combination, Normal)
}

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

    if(usersListNames.indexOf(username.value)!== -1) {
        let test = usersList.filter( function(user){return (user.username==username.value)} );
        currentUser = test
        
        // console.log(currentUser[0])
        let userCategory = categories.filter(category => Dry);

        // function(category){return (category==currentUser[0].skin_type)}
        console.log(userCategory)
        // for (let i = 0; i < categories.length; i++) {
        //     categories[i] == currentUser[0].skin_type
        // console.log(categories[i] == currentUser[0].skin_type)}

        // for (category in categories) {
        //     console.log(categories.skin_type)
        // }
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