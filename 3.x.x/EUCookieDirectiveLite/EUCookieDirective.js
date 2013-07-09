//function jscookie() {
         if(!document.__defineGetter__) { 
            if(!Browser.ie6 && !Browser.ie7) { // javascript cookies blocked only in IE8 and up
                Object.defineProperty(document, 'cookie', {
                    get: function(){
                     return ''
                    },
                    set: function(value){
		     if (value.indexOf("cookieAcceptanceCookie") !== -1) {
		      return value;
		     } else {
                      return true;
		     }
                    }
                });
            }
        } else { // non IE browsers use this method to block javascript cookies

var cookie_setter = document.__lookupSetter__ ('cookie');

            document.__defineGetter__("cookie", 
             function() { return '';} 
            );
            document.__defineSetter__("cookie", 
             function(value) {
              if (value.indexOf("cookieAcceptanceCookie") !== -1) {
               return cookie_setter.apply(this, arguments);
              }
             } 
            );
        }

//}

function SetCookie(cookieName,cookieValue,nDays) {
    var today = new Date();
    var expire = new Date();
    if (nDays==null || nDays==0) nDays=1;
    expire.setTime(today.getTime() + 3600000*24*nDays);
    document.cookie = cookieName+"="+escape(cookieValue) + ";expires="+expire.toGMTString();
    window.location.href=window.location.href;
}
