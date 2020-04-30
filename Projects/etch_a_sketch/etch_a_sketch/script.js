const grid = document.querySelector('.grid-wrapper')
const btn = document.querySelector('#reset-btn')

btn.onclick = generateNewGrid

function generateNewGrid() {
    const gridContainerStyles = `
        margin: auto;
        width: 500px;
        height: 500px;
        display: grid;
        grid-template-columns: repeat(25, 1fr);
        grid-template-rows: repeat(25, 1fr);`
        
    // Clear HTML and set grid CSS
    grid.innerHTML = ''
    grid.style = gridContainerStyles

    for (i = 0; i < 25; i++) {
        for (j = 0; j < 25; j++) {
            const div = document.createElement('div')

            div.addEventListener('mouseover', (e) => console.log(e.target.style))

            grid.appendChild(div)
            div.classList.add('grid-item')


        }
    }
}

function generateGridItem() {
 const gridItemStyle = `
    width: 20px;
    height: 20px;
    border: 1px solid black;
    background-color: cadetblue;`
}


generateNewGrid()
