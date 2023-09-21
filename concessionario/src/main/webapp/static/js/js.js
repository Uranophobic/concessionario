const carouselContainer = document.querySelector('.carousel-container');
const slides = document.querySelectorAll('.carousel-slide');
let currentIndex = 0;

function showSlide(index) {
  slides.forEach((slide, i) => {
    slide.classList.remove('active', 'prev', 'next');
    if (i === index) {
      slide.classList.add('active');
    } else if (i === index - 1 || (index === 0 && i === slides.length - 1)) {
      slide.classList.add('prev');
    } else if (i === index + 1 || (index === slides.length - 1 && i === 0)) {
      slide.classList.add('next');
    }
  });

  const slideWidth = slides[0].offsetWidth;
  carouselContainer.style.transform = `translateX(-${index * slideWidth}px)`;
}

showSlide(currentIndex);

// Gestisci l'evento di clic sui pulsanti
const prevButton = document.querySelector('.prev-button');
const nextButton = document.querySelector('.next-button');

prevButton.addEventListener('click', () => {
  currentIndex = (currentIndex - 1 + slides.length) % slides.length;
  showSlide(currentIndex);
});

nextButton.addEventListener('click', () => {
  currentIndex = (currentIndex + 1) % slides.length;
  showSlide(currentIndex);
});
