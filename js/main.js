document.addEventListener('DOMContentLoaded', () => {
    'use strict'

    let btnsAdopt = document.querySelectorAll('.js-btn-viewInfo')
    for (let btn of btnsAdopt) {
        btn.addEventListener('click', () => {
            showFormAdopt(btn)
        })
    }

    function showFormAdopt(btnAdopt) {
        let id = btnAdopt.dataset.id
        window.location.href = `info/${id}`;
    }

    let adoptForm = document.getElementById('adoptForm');
    adoptForm.addEventListener('submit', function (e) {
        e.preventDefault();

        let data = new URLSearchParams(new FormData(this));
        let msjEnviado = document.getElementById("enviado");
        msjEnviado.innerHTML = "Enviando mensaje";

        fetch('mailer',
            {
                method: 'POST',
                body: data
            }).then(function (response) {
                if (response.ok) {
                    response.text().then(function (html) {
                        msjEnviado.innerHTML = html;
                        if (html !== "por favor completa todos los campos e intenta de nuevo") {
                            setTimeout(function () {
                                let id = adoptForm.dataset.id;
                                window.location.href = `delete/${id}`;
                            }, 5000);
                        }
                    })
                } else {
                    msjEnviado.innerHTML = "Ha ocurrido un error, por favor revisa tu conexion y vuelve a intentarlo"
                    console.log(response.statusText);
                }

            })
        this.reset();
    });

})