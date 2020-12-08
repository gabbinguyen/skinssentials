const cabinetBtn = document.getElementById("cabinet-nav")
let step

document.addEventListener('DOMContentLoaded', () => {
    cabinetBtn.style.display = "none"
    fetchProducts()
   
    })

function fetchProducts() {
    const productContainer = document.getElementById('product-container')
    productContainer.innerHTML = ''
    fetch(productURL)
      .then(res => res.json())
      .then(json => json.forEach(product => {
        renderProduct(product)} ) 
      )}
      

function renderProduct(product){
    const header = document.querySelector('.header-title')
    header.innerHTML = 'Browse Skincare Products'
    const productContainer = document.getElementById('product-container')
    const productCard = document.createElement("div")
    productCard.className = 'card'
    productCard.style = "width: 18rem;"
    productCard.id = `product-card-${product.id}`
    productCard.innerHTML = `
        <img src="${product.img_url}" class="card-img-top" alt="Card image cap">
        <div class="card-body">
        <h4 class="card-title">${product.name}</h4>
        <h6 class="card-subtitle mb-2 text-muted"${product.brand}</h6>
        <p class="card-text">
            <li> For: ${product.skin_type} Skin </li>
            <li> Step: ${product.step} </li></ul></p>
     
        </div>
        </div
    `    
    productContainer.appendChild(productCard)
}

const navbarDropdown = document.querySelector(".navbar-dropdown")


navbarDropdown.addEventListener('click', (event) => {
    if (event.target.id == 'All') {
        fetchProducts()
    } else {
    const productContainer = document.getElementById('product-container')
    productContainer.innerHTML = " "
    productByStep = productsList.filter(function(product){return(product.step==event.target.id)})
    productByStep.forEach(product => {

    const headerbyStep = document.querySelector('.header-title')
    headerbyStep.innerHTML = `Browse ${event.target.innerText}`
    const productContainerByStep = document.getElementById('product-container')
    const productCardByStep = document.createElement("div")
    productCardByStep.className = 'card'
    productCardByStep.style = "width: 18rem;"
    productCardByStep.id = `product-card-${product.id}`
    productCardByStep.innerHTML = `
        <img src="${product.img_url}" class="card-img-top" alt="Card image cap">
        <div class="card-body">
        <h4 class="card-title">${product.name}</h4>
        <h6 class="card-subtitle mb-2 text-muted"${product.brand}</h6>
        <p class="card-text">
            <li> For: ${product.skin_type} Skin </li>
            <li> Step: ${product.step} </li></ul></p>
     
        </div>
        </div
    `    
    productContainerByStep.appendChild(productCardByStep)
    })
}

})


