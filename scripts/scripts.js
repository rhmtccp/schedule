// script date format
$(document).ready(function () {
    $(".datetime_class").datetimepicker({
        // format: 'yyyy-mm-dd hh:ii',
        format: 'dd-M-yyyy hh:ii',
        minuteStep: 15,
        weekStart: 1
    });
});

// alert function
function allAlertSuccess(div_alert, type_of_alert){
    $('#'+div_alert).html("<div class='alert alert-success alert-dismissible' role='alert'> " + 
    "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>" + 
    "<span aria-hidden='true'>&times;</span></button>An Event " + type_of_alert + ".</div>");
    // setTimeout(function() {
    //     $('.alert').alert('close');
    // }, 1500)
};

function allAlertFail(div_alert, type_of_alert){
    $('#'+div_alert).html("<div class='alert alert-danger alert-dismissible' role='alert'> " + 
    "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>" + 
    "<span aria-hidden='true'>&times;</span></button>An Event " + type_of_alert + ".</div>");
    // setTimeout(function() {
    //     $('.alert').alert('close');
    // }, 1500)
};

// script add & insert record
$("#form_add_event").submit(function (e) {
    e.preventDefault();
    $.ajax({
        url: "actions/add_edit.php",
        method: "post",
        data: $("#form_add_event").serialize(),
        dataType: "json",
        success: function (data) { 
            console.log(data.result);
            $("#form_add_event")[0].reset();
            $("input[type=hidden]").val('');        
            if (data.result == "query success") {
                var x = "space_for_alert";
                var y = "successfully added or edited";
                allAlertSuccess(x, y);
            } else {
                var x = "space_for_alert";
                var y = "cannot be added or edited";
                allAlertFail(x, y);
            };
            $('#calendar').fullCalendar('refetchEvents');
            $("#a_venue_loc").text('');
            $("#a_user_created_loc").text('');
        },
    });
});

// script delete record
function requestDeleteEvent() {
    var id_event = document.getElementById("a_id_event").value;
    var user_created_old = document.getElementById("a_user_created_old").value;
    
    $.ajax({
        url: "actions/delete.php",
        method: "post",
        data: {id_event : id_event, user_created_old : user_created_old},
        dataType: "json",
        success: function (data) { 
            console.log(data.result);
            $("#form_add_event")[0].reset();
            $("input[type=hidden]").val('');   
            if (data.result == "query success") {
                var x = "space_for_alert";
                var y = "has been deleted"; 
                allAlertSuccess(x,y);
            } else {
                var x = "space_for_alert";
                var y = "fail to be deleted"; 
                allAlertFail(x,y);
            };
            $('#calendar').fullCalendar('refetchEvents');
            $("#a_venue_loc").text('');
            $("#a_user_created_loc").text('');
            $('#button_delete_event').attr('disabled','disabled');
        }
    });
};

