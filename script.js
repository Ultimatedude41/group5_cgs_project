
// Slideshow JS
document.addEventListener('DOMContentLoaded', function() {
    let slides = document.querySelectorAll(".slide");
    
    // Only run if slides exist on the page
    if (slides.length > 0) {
        let index = 0;
        
        function changeSlide() {
            slides[index].classList.remove("active");
            index = (index + 1) % slides.length;
            slides[index].classList.add("active");
        }
        
        setInterval(changeSlide, 5000); // change every 5 seconds
    }
});


// Fetch and display menu items
async function loadMenu() {
    try {
        const response = await fetch('/CGS_project/menu.php?format=json');
        const result = await response.json();
        
        if (result.success) {
            displayMenu(result.data);
        } else {
            console.error('Error loading menu:', result.error);
            document.getElementById('menu-container').innerHTML = 
                '<p>Sorry, unable to load menu items.</p>';
        }
    } catch (error) {
        console.error('Fetch error:', error);
        document.getElementById('menu-container').innerHTML = 
            '<p>Sorry, unable to load menu items.</p>';
    }
}

// Display menu items in a table
function displayMenu(menuItems) {
    const container = document.getElementById('menu-container');
    
    let html = '<table class="menu-table">';
    html += '<thead><tr><th>Item</th><th>Price</th><th>Image</th></tr></thead>';
    html += '<tbody>';
    
    menuItems.forEach(item => {
        html += `
            <tr>
                <td>${item.food}</td>
                <td>${item.price}</td>
                <td><img src="images/${item.image_path}" alt="${item.food}" width="100"></td>
            </tr>
        `;
    });
    
    html += '</tbody></table>';
    container.innerHTML = html;
}

// Load menu when page loads
window.addEventListener('DOMContentLoaded', loadMenu);
