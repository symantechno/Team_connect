var socketio = io();

const messages = document.getElementById("messages");

const createMessage = (name, msg, timestamp, type = "message") => {
    const messageDiv = document.createElement("div");
    messageDiv.className = `message ${type}`;
    messageDiv.innerHTML = `
        <span class="message-name">${name}</span>
        <span class="message-text">${msg}</span>
        <span class="message-time">${timestamp}</span>
    `;
    messages.appendChild(messageDiv);
};

socketio.on("message", (data) => {
    createMessage(data.name, data.message, data.timestamp, data.type);
    messages.scrollTop = messages.scrollHeight;
});

const sendMessage = () => {
    const message = document.getElementById("message");
    if (message.value === "") return;
    socketio.emit("message", { data: message.value });
    message.value = "";
};

// Enter key to send message
document.getElementById("message").addEventListener("keyup", (e) => {
    if (e.key === "Enter") {
        sendMessage();
    }
});