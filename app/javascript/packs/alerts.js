import Swal  from 'sweetalert2';
 
let ready = () => {
    const type = $('#notification').data('type');
    const message = $('#notification').data('message');
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        timer: 6000,
        showConfirmButton: false,
        timerProgressBar: false,
        onOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer);
            toast.addEventListener('mouseleave', Swal.resumeTimer);
        }
    });
 
    Toast.fire({
        icon: type,
        title: "Oooops",
        text: message
    })
};
$('document').ready(ready);