window.onload = (e => {
    let collapsible = document.getElementsByClassName('collapsible');
    let buttons = document.getElementsByClassName('collapse');

    for(let i = 0; i<collapsible.length; i++){
        collapsible[i].style.display = 'none';
    }

    for(let i = 0; i<buttons.length; i++){
        buttons[i].parentElement.setAttribute('style', 'margin-bottom:0px');
        buttons[i].addEventListener('click', (e) => {
            const content = e.target.parentElement.nextElementSibling;
            if(content.style.display == 'block'){
                collapsible[i].style.display = 'none';
            } else {
                collapsible[i].style.display = 'block';
            }
        });
    }
});