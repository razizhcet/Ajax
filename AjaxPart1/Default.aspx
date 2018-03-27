<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Ajax Tutorial Part 1</title>
    <script language="javascript" type="text/javascript">
    
		var xmlHttpRequest;
		        
        function GetTime()
        {
			//create XMLHttpRequest object
            xmlHttpRequest = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject("Msxml2.XMLHTTP");           
            
            //If the browser doesn’t support Ajax, exit now
			if (xmlHttpRequest == null)
			return;
			
			//Initiate the XMLHttpRequest object
            xmlHttpRequest.open("GET", "Time.aspx", true);
			
			//Setup the callback function
            xmlHttpRequest.onreadystatechange = StateChange;            
            
            
            //Send the Ajax request to the server with the POST data
            xmlHttpRequest.send(null);
        }
        function StateChange()
        {
			
            if(xmlHttpRequest.readyState == 4)
            {
				document.getElementById('lblTime').value = xmlHttpRequest.responseText;
				          
            }
        }        	
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<input type="text" id="lblTime" />
		<br />
		<input type="button" id="btnGetTime" value="Get Time" onclick="GetTime();" />
    </div>
    </form>
</body>
</html>
