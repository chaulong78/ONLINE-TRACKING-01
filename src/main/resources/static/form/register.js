function validateRegister() {
    var password = $('#password');
    var rePassword = $('#re-password');
    var userName = $('#username');
    var email = $('#email');

    var message = "";

    // setBorderColor(userName);
    // setBorderColor(email);
    // setBorderColor(password);
    // setBorderColor(rePassword);

    if (password.val() != rePassword.val()) {
        message = "Confirm password is not match with password!";
    } else if (!checkLength(userName) || !checkLength(email) || !checkLength(password)) {
        message = "All fields have length in 6 to 250 character!";
    } else if (!checkNotEmpty(userName) || !checkNotEmpty(email) || !checkNotEmpty(password) || !checkNotEmpty(rePassword) || !checkCheckedRadio()) {
        message = "Please fill all fields!"
    }

    $('#error').html(message);

    if (message != "") {
        return false;
    }

    return true;
}

function checkLength(element) {
    var length = element.val().length;
    if (length < 6 || length > 250) {
        return false;
    }

    return true;
}

function checkNotEmpty(element) {
    if (element.val() == '') {
        return false;
    }

    return true;
}

function checkCheckedRadio() {
    if ($("input[name='role']:checked").length > 0) {
        return true;
    } else {
        $('#doctor').style("border-color", "red");
        $('#patient').style("border-color", "red");
        return false;
    }

}

function setBorderColor(element) {
    if (element.val() == "") {
        element.style("border-color", "blue");
    } else {
        element.style("border-color", "red");
    }
}