var scroll_bottom, submit_message;

App.room = App.cable.subscriptions.create("RoomChannel", {
    connected: function() {
        // Called when the subscription is ready for use on the server
    },

    disconnected: function() {
        // Called when the subscription has been terminated by the server
    },

    received: function(data) {
        if (data.message && (data.message.blank == null)) {
            $('#messages-table').append(data.message);
            return scroll_bottom();
        }
    }
});

$(document).on('turbolinks:load', function() {
    submit_message();
    return scroll_bottom();
});

submit_message = function() {
    return $('#message_content').on('keydown', function(event) {
        if (event.keyCode === 13 && !event.shiftKey) {
            $('input').click();
            event.target.value = "";
            return event.preventDefault();
        }
    });
};

scroll_bottom = function() {
    return $('#messages').scrollTop($('#messages')[0].scrollHeight);
};