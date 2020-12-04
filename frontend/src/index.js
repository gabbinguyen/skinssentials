document.addEventListener('DOMContentLoaded', () => {
    fetchProducts()
   
    })

function fetchProducts() {
    const productContainer = document.getElementById('product-container')
    productContainer.innerHTML = ''
    const productURL = 'http://localhost:3000/api/v1/products';
    fetch(productURL)
      .then(res => res.json())
      .then(json => json.forEach(product => {
        renderProduct(product)} ) 
      )}
      

function renderProduct(product){
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
        <a class="btn btn-primary"> Add to Cabinet</a>
        </div>
        </div
    `    
    // document.querySelector('.btn-primary').style.display = "none";

    productContainer.append(productCard)
}

// function fetchUser() {
//     document.
//     const userURL = 'http://localhost:3000/api/v1/users'

// }
      
  
  