var deniaOnce;
if (!document.__defineGetter__) {
  if (!Browser.ie6 && !Browser.ie7) { // javascript cookies blocked only in IE8 and up
    Object.defineProperty(document, 'cookie', {
      get: function () {
        return '';
      },
      set: function (value) {
        return true;
      }
    });
  }
} else { // non IE browsers use this method to block javascript cookies

  if(typeof deniaOnce === 'undefined') {
    deniaOnce = true;

    document.__defineGetter__("cookie",
      function () {
        return '';
      }
    );
    document.__defineSetter__("cookie",
      function (value) {
        return true;
      }
    );
  }
}

function SetCookie(cookieName, cookieValue) {
  window.location.assign("/plugins/system/accept.php?r="+encodeURIComponent(window.location.href));
}
