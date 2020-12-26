
const dashboardSidebar = document.querySelectorAll('.dashboardSidebar > li > a');
for (var i = 0; i < dashboardSidebar.length; i++) {
    dashboardSidebar[i].onmouseenter = function (e) {
        e.target.style.backgroundColor = 'rgb(12,0,184)';
    }

    dashboardSidebar[i].onmouseleave = function (e) {
        e.target.style.backgroundColor = '#224abe';
    }
}

const btnXacNhan = $('.btnXacNhan'),
      txtDangXuLy = $('.txtDangXuLy'),
      btnHoanThanh = $('.btnHoanThanh'),
      btnHuyDon = $('.btnHuyDon');

btnXacNhan.on('click', function () {
    btnXacNhan.next().removeClass('d-none');
    this.remove();
    btnHoanThanh.parent().removeClass('d-none');
    btnHuyDon.parent().removeClass('d-none');
});

btnHoanThanh.on('click', function () {
    btnHoanThanh.next().removeClass('d-none');
    txtDangXuLy.addClass('d-none')
    this.remove();
    btnHuyDon.parent().addClass('d-none');
});

btnHuyDon.on('click', function () {
    btnHuyDon.next().removeClass('d-none');
    txtDangXuLy.addClass('d-none')
    this.remove();
    btnHoanThanh.parent().addClass('d-none');
});