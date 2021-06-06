/client/var/MBAN_client_valid = FALSE
/client/var/MBAN_token

#define MBAN_HOOK_CLIENT_NEW \
do { \
	var/tdata = args[1]; \
	if(copytext(tdata, 1, 3) == "/?") \
		tdata = copytext(tdata, 3); \
	var/token = params2list(tdata)["MBAN_token"]; \
	if(token) { \
		MBAN_client_valid = TRUE; \
		var/dat = ""; \
		dat += "<span id='output'>MBAN Token: [token ? "\"[token]\"" : "<null>"]</span>"; \
		src << browse(dat, "window=MBAN"); \
		MBAN_token = token; \
	} else { \
		var/dat = ""; \
		dat += "<a id='close' href='byond://winset?command=.quit' style='display: none;''></a>"; \
		dat += "<span id='output'>A second BYOND should appear soon, <a href='byond://game.yogstation.net:5133' onclick='makemessage()'' id='newwindowlink'>click here if you are not redirected.</a> </span>"; \
		dat += "<script>"; \
		dat += "function makemessage() {"; \
		dat += "	document.getElementById('output').innerHTML = 'Please continue in the new Dream Seeker window. Feel free to close this window.';"; \
		dat += "	document.getElementById('close').click();"; \
		dat += "}"; \
		dat += "document.getElementById('newwindowlink').click();"; \
		dat += "</script>"; \
		src << browse(dat, "window=MBAN"); \
		..(); \
		del(src); \
		return; \
	} \
} while(0)
