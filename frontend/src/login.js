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
var span = document.getElementById("myClose");

// When the user clicks on the button, open the modal
btn.onclick = function() {
    // document.getElementById('carouselExampleCaptions').remove()
  modal.style.display = "block";
}
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
// window.onclick = function(event) {
//   if (event.target == modal) {
//     modal.style.display = "none";
//   }
// }

const modalContent = document.getElementById("modal-content")
const username = modalContent.querySelector("input[name='username']")
const submitBtn = modalContent.querySelector("button[class='button is-success']")
submitBtn.addEventListener('click', (event) => {
    
    if(usersListNames.indexOf(username.value)!== -1) {
            // document.getElementById('carouselExampleCaptions').remove()

        currentUser = usersList.filter( function(user){return (user.username==username.value)});
       
        userProducts = productsList.filter( function(product){return (product.skin_type==currentUser[0].skin_type)});
        renderNewView()
    } else {
        alert("This user does not exist, please try again or create a new account.")
    }
})


function renderNewView() { 
    modal.style.display = "none";
    const productContainer = document.getElementById('product-container')
    productContainer.innerHTML = " "
    cabinetBtn.style.display = "block"
    displayUserView(userProducts)
    const viewByBtn = document.getElementById("view by")
    viewByBtn.parentNode.removeChild(viewByBtn)
    btn.parentNode.removeChild(btn)
    suBtn.parentNode.removeChild(suBtn)
    const navbarDropdownBtn = document.querySelector(".navbar-link")
    navbarDropdownBtn.style.display = "none"
}

function displayUserView(userProducts){
    document.querySelector('.all-products').remove()  
    
    const header = document.querySelector('.header-title')
    header.innerHTML = `Recommended Products for ${currentUser[0].name}'s Skin`
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
            <a class="btn btn-primary" style="color: white"> Add to Cabinet</a>
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

        }
const cabinetButton = document.getElementById('cabinet-nav')
cabinetButton.addEventListener('click', () => {
    fetchCabinet(currentUser)
})

function fetchCabinet(currentUser) {

    fetch(`http://localhost:3000/api/v1/users/${currentUser[0].id}`)
    .then(r => r.json())
    .then(json => {
        
   renderCabinet(json)
        })
    
    }
    

function renderCabinet(user){
   

    const userP = user.products
  
    userP.forEach(product => {
        const userProductCard = document.createElement("div")
        const CabinetCardsContainer = document.getElementById("cabinet-cards-container")
 
        userProductCard.className = 'card'
        userProductCard.style.cssText = "width: 18rem; display: inline-block; margin-bottom: 50px;"
        // userProductCard.id = `user-product-card-${product.id}`
        userProductCard.innerHTML = `
            <img src="${product.img_url}" class="card-img-top" alt="Card image cap">
            <div class="card-body">
                <h4 class="card-title">${product.name}</h4>
                <h6 class="card-subtitle mb-2 text-muted"${product.brand}</h6>
                <p class="card-text" style= "font-size: 12px; letter-spacing: 1px;">
                    <li> For: ${product.skin_type} Skin </li>
                    <li> Step: ${product.step} </li></ul></p>
                    <br></br>
                <button type="button" id="remove-button-${product.id}"
                 class="btn btn-danger">Remove</button>
                 
            </div>
            </div
        `
        
        CabinetCardsContainer.append(userProductCard)
        const button = document.getElementById(`remove-button-${product.id}`)
        button.addEventListener('click', () => {
          
   
           user.user_products.forEach(p => {
               if(p.product_id == product.id) {
                userProductCard.remove()   
            
               removeProduct(p)
                    }
                })
     
            })
    
    
        })
   
    }

}
function removeProduct(p) {

       
        fetch(`http://localhost:3000/api/v1/user_products/${p.id}`, {
            method: "DELETE", 
            headers: {
                "Content-Type": "application/json",
                "Accept": "application/json"
              },
        })
    }

   
    
