document.addEventListener('DOMContentLoaded', () => {
    fetchuserProducts()
    })

    function fetchProducts() {
        const userProductURL = 'http://localhost:3000/api/v1/user_products';
        fetch(userProductURL)
          .then(res => res.json())
          .then(json => json.forEach(userProduct => {
            renderUserProduct(userProduct)})
          )}

    function renderUserProduct(userProduct){
   
    
    document.querySelector('.card-title').innerHTML =
            ` ${userProduct.name}`
            //     <br>brand:
            //     ${product.brand}</br>
               
            //       <button data-id=${this.id}>add to cabinet</button>
            //     </h3>
            //   </li>`;
            // }
            const image = document.querySelector('.card-img-top')
            image.src = `${userProduct.img_url}`
            const description = document.querySelector('.card-text')
            description.innerHTML = `<ul>
            By: ${userProduct.brand}
            <li> For: ${userProduct.skin_type} Skin </li>
            <li> Step: ${userProduct.step} </li></ul>
            `
        
        }
              
          
          