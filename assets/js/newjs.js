let arrow = document.querySelectorAll(".arrow");
for (var i = 0; i < arrow.length; i++) {
  arrow[i].addEventListener("click", (e)=>{
 let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
 arrowParent.classList.toggle("showMenu");
  });
}

// const heartDOM = document.querySelector('.js-heart');
// // initialized like to false when user hasnt selected
// let liked = false;

// // create a onclick listener
// heartDOM.onclick = (event) => {
//     // check if liked 
//     liked = !liked; // toggle the like ( flipping the variable)
    
//     // this is what we clicked on
//     const target = event.currentTarget;
    
//     if (liked) {
//         // remove empty heart if liked and add the full heart
//         target.classList.remove('far');
//         target.classList.add('fas', 'pulse');
//     } else {
//         // remove full heart if unliked and add empty heart
//         target.classList.remove('fas');
//         target.classList.add('far');
//     }
// }

// heartDOM.addEventListener('animationend', (event) => {
//     event.currentTarget.classList.remove('pulse');
// })

// const heartDOM = document.querySelector('.js-heart1');
// // initialized like to false when user hasnt selected
// let liked = false;

// // create a onclick listener
// heartDOM.onclick = (event) => {
//     // check if liked 
//     liked = !liked; // toggle the like ( flipping the variable)
    
//     // this is what we clicked on
//     const target = event.currentTarget;
    
//     if (liked) {
//         // remove empty heart if liked and add the full heart
//         target.classList.remove('far');
//         target.classList.add('fas', 'pulse');
//     } else {
//         // remove full heart if unliked and add empty heart
//         target.classList.remove('fas');
//         target.classList.add('far');
//     }
// }

// heartDOM.addEventListener('animationend', (event) => {
//     event.currentTarget.classList.remove('pulse');
// })

jQuery(document).ready(function(){
   

    $(".dropdown").hover(
        function() { $('.dropdown-menu', this).fadeIn(300);
        },
        function() { $('.dropdown-menu', this).fadeOut(300);
    });
   
 
   
});

