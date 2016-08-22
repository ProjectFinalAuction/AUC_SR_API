<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Test WebSocket</title>
<!-- header -->
<jsp:include page="header.jsp" />

<!-- menu -->
<jsp:include page="menu.jsp" />

<!-- content -->
<div class="content" id="register" ng-controller="realTimeCtrl">
	<div  class="container-fluid">
		<noscript>
			<h2 style="color: #ff0000">Seems your browser doesn't support
				Javascript! Websocket relies on Javascript being enabled. Please
				enable Javascript and reload this page!</h2>
		</noscript>
		<div>
			<div>
				<button id="connect" onclick="connect();">Connect</button>
				<button id="disconnect" disabled="disabled" onclick="disconnect();">Disconnect</button>
			</div>
			<div id="conversationDiv">
				<label>What is your name?</label><input type="text" id="name" ng-model="name"/>
				<!-- 				<button id="sendName" onclick="realTime();">Send</button> -->
				<button id="sendName" ng-click=realTime();>Send</button>
				<p id="response" ng-model="response"></p>
			</div>
		</div>

	</div>
	<!-- end div container -->
</div>
<!-- end div main content information -->

<!-- footer -->
<jsp:include page="footer.jsp" />


<script
	src="${pageContext.request.contextPath}/resources/static/js/sockjs-0.3.4.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/static/js/stomp.js"></script>
<script type="text/javascript">
        var stompClient = null;
        
        function setConnected(connected) {
            document.getElementById('connect').disabled = connected;
            document.getElementById('disconnect').disabled = !connected;
            document.getElementById('conversationDiv').style.visibility = connected ? 'visible' : 'hidden';
            document.getElementById('response').innerHTML = '';
        }
        
        
        
        function disconnect() {
            if (stompClient != null) {
                stompClient.disconnect();
            }
            setConnected(false);
            console.log("Disconnected");
        }
        
        function connect() {
        	if (stompClient != null) {
                stompClient.disconnect();
            }
        	var socket = new SockJS('/hello');
            stompClient = Stomp.over(socket);            
            stompClient.connect({}, function(frame) {
                setConnected(true);
                console.log('Connected: ' + frame);
                stompClient.subscribe('/topic/greetings', function(greeting){
                    showGreeting(JSON.parse(greeting.body).content);
                });
            });
            
            //sendName();
          
        }
        
        
        function sendName() {
        	
//         	alert("HELLO SEND NAME");
             var name = document.getElementById('name').value;
            stompClient.send("/app/hello", {}, JSON.stringify({ 'name': name }));

        }
        
        function showGreeting(message) {
            var response = document.getElementById('response');
            var p = document.createElement('p');
            p.style.wordWrap = 'break-word';
            p.appendChild(document.createTextNode(message));
            response.appendChild(p);
        }
        
        //////////
        var app = angular.module('myApp', []);

    </script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/resources/scripts/real-time.js"></script> 