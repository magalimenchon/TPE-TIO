document.addEventListener('DOMContentLoaded', () => {
    'use strict'

    let btnsAdopt = document.querySelectorAll('.js-btn-viewInfo')
    for(let btn of btnsAdopt) {
        btn.addEventListener('click', () => {
            showFormAdopt(btn)
        })
    }

    function showFormAdopt(btnAdopt) {
        let id = btnAdopt.dataset.id
        window.location.href = `info/${id}`;
    }

})