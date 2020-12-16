const profileSidebar = document.querySelectorAll('.profileSidebar > li');
for (let i = 0; i < profileSidebar.length; i++) {
    profileSidebar[i].onmouseenter = function (e) {
        e.target.style.backgroundColor = 'rgb(12,0,184)';
    }

    profileSidebar[i].onmouseleave = function (e) {
        e.target.style.backgroundColor = '#224abe';
    }
}

const displayTaiKhoanCuaToi = document.querySelector('.displayTaiKhoanCuaToi');
const taiKhoanCuaToi = document.querySelector('#taiKhoanCuaToi');

const displayDonMua = document.querySelector('.displayDonMua');
const donMua = document.querySelector('#donMua');

const displayChangePassword = document.querySelector('.displayChangePassword');
const changePassword = document.querySelector('#changePassword');

displayTaiKhoanCuaToi.onclick = function () {
    taiKhoanCuaToi.parentElement.setAttribute('class', 'container-fluid');
    donMua.setAttribute('class', 'container-fluid d-none');
    changePassword.setAttribute('class', 'container-fluid d-none');
}

displayDonMua.onclick = function () {
    donMua.setAttribute('class', 'container-fluid');
    taiKhoanCuaToi.parentElement.setAttribute('class', 'container-fluid, d-none');
    changePassword.setAttribute('class', 'container-fluid d-none');
}

displayChangePassword.onclick = function () {
    changePassword.setAttribute('class', 'container-fluid');
    taiKhoanCuaToi.parentElement.setAttribute('class', 'container-fluid, d-none');
    donMua.setAttribute('class', 'container-fluid d-none');
}