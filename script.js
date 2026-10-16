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

// Zoom au clic sur les images de la galerie
const dlg = document.createElement('dialog');
dlg.className = 'lightbox';
dlg.innerHTML = '<img alt="">';
document.body.appendChild(dlg);
dlg.addEventListener('click', () => dlg.close());
document.querySelectorAll('img.zoom').forEach(i => i.addEventListener('click', () => {
  dlg.querySelector('img').src = i.currentSrc || i.src;
  dlg.querySelector('img').alt = i.alt;
  dlg.showModal();
}));
