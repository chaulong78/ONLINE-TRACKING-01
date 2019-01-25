function validatePassword() {
    var pass = $('#password').val();
    var rePass = $('#re-password').val();

    var message = "";

    if (pass != rePass) {
        message = "Re password doesn't match password";
    } else if (pass.length < 6 || pass.length > 25){
        message = "Password ranges is 6 to 25 character"
    }

    $('#error').html(message);

    if (message == "") {
        return true;
    }

    return false;
}