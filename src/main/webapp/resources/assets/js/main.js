jQuery(document).ready(function($) {
    clearAllValues();

    $("#firstFile").change(function() {
        var value = this.value,
            newValue;
        newValue = value.replace(/C:\\fakepath\\/i, '')
        $("#firstFileName").val(this.value);
        $("#firstFileName").attr("disabled", "disabled");
        disableOrEnableSendButton();
    });
    $("#secondFile").change(function() {
        $("#secondFileName").val(this.value);
        $("#secondFileName").attr("disabled", "disabled");
        disableOrEnableSendButton();
    });

    function clearAllValues() {
        $("#sendButton").attr("disabled", "disabled");
        $("#firstFileName").val(this.value);
        $("#secondFileName").val(this.value);
    }

    function disableOrEnableSendButton() {
        var val1 = $("#firstFileName").val(),
            val2 = $("#secondFileName").val();

        if(val1 && val2) {
            $("#sendButton").removeAttr("disabled");
        } else {
            $("#sendButton").attr("disabled", "disabled");
        }
    }
});