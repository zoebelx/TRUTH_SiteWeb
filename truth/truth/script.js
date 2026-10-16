// Menu mobile
const burger = document.querySelector('.burger');
const nav = document.getElementById('nav');
burger.addEventListener('click', () => {
  const open = nav.classList.toggle('open');
  burger.setAttribute('aria-expanded', open);
});

// Images : si le fichier local est absent, repli sur le CDN Wix ; si absent aussi, initiales (portraits)
document.querySelectorAll('img[data-fallback]').forEach(img => {
  img.addEventListener('error', function onErr() {
    if (img.dataset.tried) {
      const m = img.closest('.member');
      if (m) m.classList.add('noimg'); else img.style.display = 'none';
      return;
    }
    img.dataset.tried = '1';
    img.src = img.dataset.fallback;
  });
  if (img.complete && img.naturalWidth === 0) img.dispatchEvent(new Event('error'));
});
