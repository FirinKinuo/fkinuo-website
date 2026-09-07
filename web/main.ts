import './css/index.css'
import './css/glassmorphism.css'

document.querySelectorAll('.glass-button').forEach((btn) => {
    const button = btn as HTMLElement;

    button.addEventListener('mousemove', (e: MouseEvent) => {
        const rect = button.getBoundingClientRect();
        const x = e.clientX - rect.left;
        const y = e.clientY - rect.top;

        button.style.setProperty('--glass-button-animation-light-x', `${(x / rect.width) * 100}%`);
        button.style.setProperty('--glass-button-animation-light-y', `${(y / rect.height) * 100}%`);
    });
});

window.addEventListener('load', () => {
    const main = document.querySelector('main')
    const overlay = document.getElementById('loading-overlay');

    if (overlay) {
        setTimeout(() => {
            if (main) {
                main.style.removeProperty('opacity')
            }
            overlay.classList.add('opacity-0', 'pointer-events-none');
        }, 400)


        setTimeout(() => {
            overlay.remove();
        }, 1000);
    }
});