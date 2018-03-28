function startSession () {

	//do other UI things here first
	const webSocket = new WebSocket('ws://' + window.location.href + '/ws');
	webSocket.onmessage = onMessage;
	
}

function onMessage () {

}