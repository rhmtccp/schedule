$(document).ready(function() {
    $('#calendar').fullCalendar({
        // themeSystem:'bootstrap3',
        firstDay: 1,
        timezone: 'Asia/Jakarta',
        showNonCurrentDates: false,
        minTime: '07:00:00',
        maxTime: '19:00:00',
        // defaultView: 'listMonth',
        validRange: {
            start: '2020-11-01',
            end: '2021-12-31'
        },
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        // businessHours: {
        //     // days of week. an array of zero-based day of week integers (0=Sunday)
        //     dow: [ 1, 2, 3, 4,5 ], // Monday - Thursday
          
        //     start: '08:30', // a start time (10am in this example)
        //     end: '17:30', // an end time (6pm in this example)
        // },
        events: "actions/calendar_render.php",

        eventClick: function(event) {
            // alert(event.start);
            console.log(event.venue);
            $("#a_id_event").val(event.id_event);
            $("#a_venue").val(event.venue);
            $("#a_venue_loc").text(event.venue);
            $("#a_user_created_loc").text(event.user_created +' / '+ event.dept_created);
            $("#a_user_created_old").val(event.user_created);
            $("#a_dept_created_old").val(event.dept_created);
            $("#a_title").val(event.title);
            $("#a_start").val($.fullCalendar.formatDate(event.start, "DD-MMM-Y HH:mm"));
            $("#a_end").val($.fullCalendar.formatDate(event.end, "DD-MMM-Y HH:mm"));
            $('#button_delete_event').removeAttr('disabled');
            // $('#button_delete_event').attr('disabled','disabled');
        },

        dayClick: function(e) {
            // alert('a day has been clicked!');
            // console.log(e);
            $('#calendar').fullCalendar('changeView', 'agendaDay');
            $("#calendar").fullCalendar('gotoDate', moment(e));
            $("#form_add_event")[0].reset();
            $("input[type=hidden]").val('');
            $("#a_venue_loc").text('');
            $("#a_user_created_loc").text('');

        }
    });
    
    function buttonClick() {
        $("#form_add_event")[0].reset();
        $("input[type=hidden]").val('');
        $("#a_venue_loc").text('');
        $("#a_user_created_loc").text('');
    };
    
    $('.fc-button').click(function(){
        // alert('nextis clicked, do something');
        buttonClick();
     });
});








