import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
    connected() {
        // Called when the subscription is ready for use on the server
    },

    disconnected() {
        // Called when the subscription has been terminated by the server
    },

    received(data) {
        // Called when there's incoming data on the websocket for this channel
        $('#message-container').append data.foo

    },

    subscribed: function() {
        return this.perform('subscribed');
    },

    unsubscribed: function() {
        return this.perform('unsubscribed');
    }
});