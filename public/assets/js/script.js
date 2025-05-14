 //  ---------------Navbar------------------------
 (() => {
    const openNav = document.querySelector(".open-menu"),
        closeNav = document.querySelector(".close-menu"),
        navMenu = document.querySelector(".nav-link-container"),
        background = document.querySelector(".background"),
        mediaSize = 992;

    // Open and close the main navigation menu
    openNav.addEventListener("click", toggleMenu);
    closeNav.addEventListener("click", toggleMenu);
    background.addEventListener("click", toggleMenu);
    function toggleMenu() {
        navMenu.classList.toggle("open");
        background.classList.toggle("active");
    }

    // Handle dropdown menu toggling
    navMenu.addEventListener("click", (event) => {
        if (event.target.hasAttribute("data-toggle") && window.innerWidth <= mediaSize) {
            event.preventDefault();
            const dropdownMenuBranch = event.target.parentElement;

            // If already active, collapse it
            if (dropdownMenuBranch.classList.contains("active")) {
                collapseDropdownMenu(dropdownMenuBranch);
            } else {
                // Collapse any other active dropdown
                if (navMenu.querySelector(".dropdown-menu-branch.active")) {
                    collapseDropdownMenu(navMenu.querySelector(".dropdown-menu-branch.active"));
                }

                // Expand the clicked dropdown
                dropdownMenuBranch.classList.add("active");
                const dropdownMenu = dropdownMenuBranch.querySelector(".dropdown-main-menu");
                dropdownMenu.style.maxHeight = dropdownMenu.scrollHeight + "px";
            }
        }
    });

    // Collapse dropdown menu helper function
    function collapseDropdownMenu(menuBranch = null) {
        if (menuBranch) {
            const dropdownMenu = menuBranch.querySelector(".dropdown-main-menu");
            dropdownMenu.style.maxHeight = null; // Reset max height to collapse smoothly
            menuBranch.classList.remove("active");
        }
    }

    // Reset dropdown menu on window resize for proper responsiveness
    window.addEventListener("resize", () => {
        if (window.innerWidth > mediaSize) {
            if (navMenu.classList.contains("open")) {
                toggleMenu();
            }
            if (navMenu.querySelector(".dropdown-menu-branch.active")) {
                collapseDropdownMenu(navMenu.querySelector(".dropdown-menu-branch.active"));
            }
        }
    });
})();

// =========================Banner=================================

const slides = document.querySelectorAll('.banner-slide');
const container = document.querySelector('.container-fluid');
let currentSlide = 0;
let interval;

function showSlide(index) {
  slides.forEach((slide, i) => {
    slide.classList.remove('active');
    if (i === index) {
      slide.classList.add('active');
    }
  });
}

function startSlideShow() {
  interval = setInterval(() => {
    currentSlide = (currentSlide + 1) % slides.length;
    showSlide(currentSlide);
  }, 6000);
}

function stopSlideShow() {
  clearInterval(interval);
}

// Initial display
showSlide(currentSlide);
startSlideShow();

// Pause on hover
container.addEventListener('mouseenter', stopSlideShow);
container.addEventListener('mouseleave', startSlideShow);

//   -----------------Products Slider---------------------------

document.addEventListener("DOMContentLoaded", function () {
    new Swiper(".products-slider", {
      slidesPerView: 4,
      spaceBetween: 10,
      autoplay: {
        delay: 4000,
        disableOnInteraction: false,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      breakpoints: {
        0: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 2,
        },
        1024: {
          slidesPerView: 4,
        },
      },
    });
  
  
  });

//   -----------------Testimonial Slider---------------------------

document.addEventListener("DOMContentLoaded", function () {
    new Swiper(".testimonial-slider", {
      slidesPerView: 3,
      spaceBetween: 10,
      autoplay: {
        delay: 5000,
        disableOnInteraction: false,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      breakpoints: {
        0: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 2,
        },
        1024: {
          slidesPerView: 3,
        },
      },
    });
  
  
  });

  //   -----------------Poster Slider---------------------------

document.addEventListener("DOMContentLoaded", function () {
  new Swiper(".poster-slider", {
    slidesPerView: 1,
    spaceBetween: 10,
    effect: "creative",
    creativeEffect: {
      prev: {
        translate: [0, 0, -400],
        scale: 0.9,
      },
      next: {
        translate: [0, 0, -400],
        scale: 0.9,
      },
    },
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      0: {
        slidesPerView: 1,
      },
      768: {
        slidesPerView: 1,
      },
      1024: {
        slidesPerView: 1,
      },
    },
  });


});

// ---------------------------- Product Thumbnail Slider ---------------------------
const mainImage = document.getElementById("mainImage");

const thumbnailSwiper = new Swiper(".thumbnail-slider", {
  slidesPerView: 5,
  spaceBetween: 10,
  loop: true,
  autoplay: {
    delay: 3000,
    disableOnInteraction: false,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    0: {
      slidesPerView: 3,
    },
    768: {
      slidesPerView: 3,
    },
    1024: {
      slidesPerView: 5,
    },
  },
  on: {
    init: function () {
      // Set initial main image
      const firstThumb = this.slides[this.activeIndex].querySelector("img");
      if (firstThumb) {
        mainImage.src = firstThumb.getAttribute("data-full");
      }
    },
    slideChangeTransitionEnd: function () {
      const activeSlide = this.slides[this.activeIndex];
      const img = activeSlide.querySelector("img");
      if (img && img.dataset.full) {
        mainImage.src = img.dataset.full;
      }
    }
  }
});

// Click to change main image and sync swiper
document.querySelectorAll(".thumbnail-slider .swiper-slide img").forEach((img, i) => {
  img.addEventListener("click", () => {
    const fullSrc = img.dataset.full;
    if (fullSrc) {
      mainImage.src = fullSrc;
      thumbnailSwiper.slideToLoop(i);
    }
  });
});