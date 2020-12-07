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
  console.log(submitBtn)
  console.log(createBtn)
  console.log(name)

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
        renderNewUserView()
      });
})


function renderNewUserView() { 
    modal.style.display = "none";
    const productContainer = document.getElementById('product-container')
    productContainer.innerHTML = " "
    displayNewUserView(userProducts)
    btn.parentNode.removeChild(btn)
    suBtn.parentNode.removeChild(suBtn)
}

function displayNewUserView(userProducts){
    document.querySelector('.all-products').remove()  
    
    const header = document.querySelector('.header-title')
    header.innerHTML = `Recommended Products for ${currentUser.name}'s Skin`
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
                addToNewUserCabinet(product, currentUser)
                alert('Added!')
            }
            
        })
    })


    function addToNewUserCabinet(product, currentUser) {
   
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
            body: JSON.stringify(data)})
    
            }
    const cabinetButton = document.getElementById('cabinet-nav')
    cabinetButton.addEventListener('click', () => {
        fetchCabinet(currentUser)
    })
    
    function fetchCabinet(currentUser) {
    
        fetch(`http://localhost:3000/api/v1/users/${currentUser.id}`)
        .then(r => r.json())
        .then(json => {
            
       renderNewCabinet(json)
            })
        
        }
        
    
    function renderNewCabinet(user){
       
    
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
                
                   removeNewUserProduct(p)
                        }
                    })
         
                })
        
        
            })
       
        }
    
    }
    function removeNewUserProduct(p) {
    
           
            fetch(`http://localhost:3000/api/v1/user_products/${p.id}`, {
                method: "DELETE", 
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                  },
            })
        }
    
       
        
    