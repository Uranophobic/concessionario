const imgs = document.getElementById('imgs');
const img = document.querySelector('#imgs img');
console.log(img.length);
let idx = 0;
function run() {
	idx++;
	if (idx > 3) {
		idx = 0;
	}
	imgs.style.transform = `translateX(${-idx * 100}%)`;
}

setInterval(run, 5000);




var index = 0;

show_image(index);

function show_image(i){

    index += i;

    var images = document.getElementsByClassName("image");

    for(i=0; i < images.length; i++){
        images[i].style.display = "none";
    }

    if(index > images.length - 1){
        index = 0;
    }

    if(index < 0){
        index = images.length - 1;
    }

    images[index].style.display = 'block';
    dots[index].className += ' active';
}