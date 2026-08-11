// AddInfo Brasil — script compartilhado
document.addEventListener('DOMContentLoaded', () => {
  // menu mobile
  const toggle = document.querySelector('.nav-toggle');
  const links = document.querySelector('.nav-links');
  if(toggle && links){
    toggle.addEventListener('click', () => {
      const open = links.classList.toggle('open');
      toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
    links.querySelectorAll('a').forEach(a => a.addEventListener('click', () => links.classList.remove('open')));
  }

  // ano no rodapé
  const yearEl = document.getElementById('year');
  if(yearEl) yearEl.textContent = new Date().getFullYear();

  // reveal on scroll — só esconde os elementos se o JS realmente rodar
  // (progressive enhancement: sem JS, o conteúdo continua visível normalmente)
  const revealEls = document.querySelectorAll('.reveal');
  if('IntersectionObserver' in window && revealEls.length){
    revealEls.forEach(el => el.classList.add('reveal-init'));
    const io = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if(entry.isIntersecting){
          entry.target.classList.add('in');
          io.unobserve(entry.target);
        }
      });
    }, { threshold:0.1, rootMargin:'0px 0px -60px 0px' });
    revealEls.forEach(el => io.observe(el));
  }
});
