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
