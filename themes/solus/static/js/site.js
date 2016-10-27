var site;
(function (site) {
    var sidepane;
    (function (sidepane) {
        var Container;
        var SidepaneButton;
        var ContentOverlay;
        function Enable() {
            SidepaneButton = document.querySelector('header > div[data-solus-component="button"]');
            Container = document.querySelector('div[data-solus-component="sidepane"]');
            ContentOverlay = document.querySelector('div[data-solus-component="content-overlay"]');
            SidepaneButton.addEventListener("mouseup", site.sidepane.Toggle);
            ContentOverlay.addEventListener("mouseup", site.sidepane.Toggle);
        }
        sidepane.Enable = Enable;
        function Toggle() {
            var containerShowing = SidepaneButton.hasAttribute("active");
            if (!containerShowing) {
                SidepaneButton.setAttribute("active", "");
                Container.setAttribute("data-solus-animation", "slide");
                ContentOverlay.setAttribute("active", "");
            }
            else {
                SidepaneButton.removeAttribute("active");
                Container.removeAttribute("data-solus-animation");
                ContentOverlay.removeAttribute("active");
            }
        }
        sidepane.Toggle = Toggle;
    })(sidepane = site.sidepane || (site.sidepane = {}));
})(site || (site = {}));
var site;
(function (site) {
    function Init() {
        site.sidepane.Enable();
    }
    site.Init = Init;
})(site || (site = {}));
