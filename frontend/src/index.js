document.addEventListener('DOMContentLoaded', () => {
    fetchProducts()
    })

function fetchProducts() {
    const productURL = 'http://localhost:3000/api/v1/products';
    fetch(productURL)
      .then(res => res.json())
      .then(json => json.forEach(product => {
        renderProduct(product)})
      )}

function renderProduct(product){
   
    
    document.querySelector('.card-title').innerHTML =
    `
     ${product.name}`
    //     <br>brand:
    //     ${product.brand}</br>
       
    //       <button data-id=${this.id}>add to cabinet</button>
    //     </h3>
    //   </li>`;
    // }
    document.querySelector('.card-body h6').innerHTML = `${product.brand}`
    const image = document.querySelector('.card-img-top')
    image.src = `${product.img_url}`
    const description = document.querySelector('.card-text')
    description.innerHTML = `<ul>
   
    <li> For: ${product.skin_type} Skin </li>
    <li> Step: ${product.step} </li></ul>
    `

}
      
  
  