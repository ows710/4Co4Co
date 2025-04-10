function validateEmail() {
    const emailInput = document.getElementById('email');
    const errorDiv = document.getElementById('email-error');
    const email = emailInput.value.trim();

    // 간단한 이메일 정규 표현식
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (!emailRegex.test(email)) {
        emailInput.classList.add('invalid');
        errorDiv.style.display = 'block';
    } else {
        emailInput.classList.remove('invalid');
        errorDiv.style.display = 'none';
    }
}

function validateForm() {
    const emailInput = document.getElementById('email');
    const email = emailInput.value.trim();
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email); // 유효하지 않으면 form 제출되지 않음
}