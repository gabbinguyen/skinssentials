const usersURL = "http://localhost:3000/api/v1/users"
const productURL = 'http://localhost:3000/api/v1/products'
let usersListNames = [];
let usersList = [];
let userProducts = [];
let currentUser;
let productsList;
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
    productsList = products
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
    if(usersListNames.indexOf(username.value)!== -1) {
        currentUser = usersList.filter( function(user){return (user.username==username.value)});
       
        userProducts = productsList.filter( function(product){return (product.skin_type==currentUser[0].skin_type)});
        modal.style.display = "none";
        const productContainer = document.getElementById('product-container')
        productContainer.innerHTML = " "
        displayUserView(userProducts)
        btn.parentNode.removeChild(btn)
    } else {
        alert("This user does not exist, please try again.")
    }
})

function displayUserView(userProducts){
          

    const userProductContainer = document.getElementById("user-product-container")

    userProducts.forEach( product => {
        const userProductCard = document.createElement("div")
        userProductCard.className = 'card'
        userProductCard.style = "width: 18rem;" 
        userProductCard.id = `product-card-${product.id}`
        userProductCard.innerHTML = `abc`
        userProductCard.innerHTML = `
            <img src="${product.img_url}" class="card-img-top" alt="Card image cap">
            <div class="card-body">
            <h4 class="card-title">${product.name}</h4>
            <h6 class="card-subtitle mb-2 text-muted"${product.brand}</h6>
            <p class="card-text">
                <li> For: ${product.skin_type} Skin </li>
                <li> Step: ${product.step} </li></ul></p>
            <a class="btn btn-primary"> Add to Cabinet</a>
            </div>
            </div
        `

        userProductContainer.append(userProductCard)
        const productCard = document.getElementById(`product-card-${product.id}`)
 

        productCard.addEventListener('click', (e) => {
            if(e.target.innerHTML = 'Add to Cabinet') {
                addToCabinet(product, currentUser)
                alert('Added!')
            }
            
        })
    })
    document.addEventListener('click', (e) => {
        if(e.target.innerText== 'Cabinet') {
    console.log(currentUser)
     renderCabinet(currentUser)
        }
    })
}
function addToCabinet(product, currentUser) {
   
    const data = {
        user_id: currentUser[0].id,
        product_id: product.id
        
    }

    fetch('http://localhost:3000/api/v1/user_products', {
        method: "POST",
        headers: {
            'Content-Type': 'application/json',
            Accept: 'application/json'
        },
        body: JSON.stringify(data)})

        renderCabinet(currentUser)}

function renderCabinet(currentUser) {

    fetch(`http://localhost:3000/api/v1/users/${currentUser[0].id}`)
    .then(r => r.json())
    .then(json => {
                
   renderCabinet(json)
        })

    
    }
    

function renderCabinet(user){
    const userP = user[0].products
    
    userP.forEach(product => {
        const CabinetCardsContainer = document.getElementById("cabinet-cards-container")
        const userProductCard = document.createElement("div")
        userProductCard.innerHTML = ''
        userProductCard.className = 'card'
        userProductCard.style.cssText = "width: 18rem; display: inline-block; margin-bottom: 50px;"
        userProductCard.id = `user-product-card-${product.id}`
        userProductCard.innerHTML = `
            <img src="${product.img_url}" class="card-img-top" alt="Card image cap">
            <div class="card-body">
            <h4 class="card-title">${product.name}</h4>
            <h6 class="card-subtitle mb-2 text-muted"${product.brand}</h6>
            <p class="card-text">
                <li> For: ${product.skin_type} Skin </li>
                <li> Step: ${product.step} </li></ul></p>
            
                <button type="button" id="product-button-${product.id}"
                 class="btn btn-primary">Delete</button>
                 
            </div>
            </div
        `
        CabinetCardsContainer.append(userProductCard)
        // document.querySelector('.btn-primary').style.display = "none";
    
    })
 

    }


