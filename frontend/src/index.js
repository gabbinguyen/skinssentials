const productContainer = document.getElementById('product-container')
let currentUser
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
        
            <button type="button" id="product-button-${product.id}"
             class="btn btn-primary">Add to Cabinet</button>
        </div>
        </div
    `
    
    // document.querySelector('.btn-primary').style.display = "none";

    productContainer.append(productCard)
    const addToCabinetButton = document.getElementById(`product-button-${product.id}`)
    addToCabinetButton.addEventListener('click', () => {
        
        fetchCabinet(product)
    })
    

}



function fetchCabinet(product) {

    const data = {
        user_id: currentUser.id,
        product_id: product.id
        
    }

    fetch('http://localhost:3000/api/v1/user_products', {
        method: "POST",
        headers: {
            'Content-Type': 'application/json',
            Accept: 'application/json'
        },
        body: JSON.stringify(data)
    
    .then(r => r.json())
    .then(json => json.forEach(cabinet => {
       console.log(cabinet)
       renderCabinet(cabinet)
    }))
    
})
}

function renderCabinet(cabinet){
    console.log(cabinet)
    const CabinetCardsContainer = document.getElementById("cabinet-cards-container")
    const newCabinetItem = document.createElement("div")
    
    newCabinetItem.innerHTML = `
   
    <div class="card-body">
        <h5 class="card-title">${cabinet.id}</h5>
        <h6 class="card-subtitle mb-2 text-muted"> By: </h6>
        <p class="card-text" style="font-size: 12px; letter-spacing: 1px;"></p>
        <button type="button" id="remove-button-${cabinet.id}" class="btn btn-danger">Remove</button>
    </div>
    `
    CabinetCardsContainer.append(newCabinetItem)
   
}
