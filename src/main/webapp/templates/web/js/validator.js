function checkFullName() {
    const check = true;
    const name = $("#name").val();

    if (name === "") {
        $("#name-error").text("* Please enter your name!")
        return (check && false);
    } else {
        $("#name-error").text("")
        $("#name").css("borderColor", "")
        return (check && true);
    }
}

function checkMail() {
    const check = true;
    const email = $("#email").val();
    const pattern = /^[a-zA-Z0-9_.]+@[a-zA-Z.]+?\.[a-zA-Z]{2,3}$/;
    if (email === "") {
        $("#email-error").text("* Please enter your email!")
        $("#email-div").css("borderColor", "red")
        return (check && false);
    } else if (email !== "" && !pattern.test(email)) {
        $("#email-error").text("* Invalid email! Please enter again.")
        $("#email-div").css("borderColor", "red")
        return (check && false);
    } else {
        $("#email-error").text("")
        $("#email-div").css("borderColor", "")
        return (check && true);
    }
}

function checkPass() {
    const check = true;
    const pass = $("#password").val();
    if (pass === "") {
        $("#pass-error").text("* Please enter your password!")
        $("#password").css("borderColor", "red")
        return (check && false);
    } else if (pass.length < 8) {
        $("#pass-error").text("* Password too short.")
        $("#password").css("borderColor", "red")
        return (check && false);
    } else {
        $("#pass-error").text("")
        $("#password").css("borderColor", "")
        return (check && true);
    }
}

function checkPhone() {
    const check = true;
    const vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    const phone = $("#phone").val();
    if (phone === "") {
        $("#phone-msg").text("* Please enter your phone!")
        $("#phone").css("borderColor", "red")
        return (check && false);
    } else if (phone !== "" && !vnf_regex.test(phone)) {
        $("#phone-msg").text("* Invalid phone number!")
        $("#phone").css("borderColor", "red")
        return (check && false);
    } else {
        $("#phone-msg").text("")
        $("#phone").css("borderColor", "")
        return (check && true);
    }
}


