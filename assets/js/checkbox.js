const checkboxes = document.querySelectorAll('.checkbox-item input[type="checkbox"]');

checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', function() {
        if (this.checked) {
            this.parentElement.classList.add('active');
        } else {
            this.parentElement.classList.remove('active');
        }
    });
});