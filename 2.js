
input();
function input(){
    var email=window.prompt("email");
    var phone=window.prompt("phone");
    
    var username=window.prompt("username");
    is_username_valid(username);

    var password=window.prompt("password");
    is_password_valid(password);
}

// merupakan kombinasi dari huruf kecil, huruf besar dan angka dengan panjang 5-9 karakter. Username tidak boleh diawali dengan angka.

function is_username_valid(a){
    var usn=/^[^0-9][0-9a-zA-Z]{5,9}$/;
    if(a.match(usn)){ 
        console.log("is_username_valid = " + a);
        console.log(true);
    }else{ 
       console.log("is_username_valid = " + a);
       console.log(false);
    }
}

// merupakan kombinasi dari huruf kecil, huruf besar minimal satu karakter, angka minimal satu karakter, dan karakter spesial minimal satu karakter dan harus memiliki karakter simbol ‘@’  dan panjang minimal 8 karakter.

function is_password_valid(a){
    var pwd = /^(?=.*[@]+.*)(?=.*[0-9]+.*)(?=.*[A-Z]+.*)(?=.*[$&\+,:;\=\?@#|'<>\.\-_^\*()%!]+.*)[0-9a-zA-Z$&\+,:;\=\?@#|'<>\.\-_^\*()%!]{8,}$/;
    
    if(a.match(pwd)){ 
        console.log("is_password_valid = " + a)
        console.log(true);
    }else{ 
        console.log("is_password_valid = " + a)
        console.log(false);
    }
}