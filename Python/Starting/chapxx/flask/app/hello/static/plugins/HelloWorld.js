mpld3.register_plugin("click_info", ClickInfo);
ClickInfo.prototype = Object.create(mpld3.Plugin.prototype);
ClickInfo.prototype.constructor = ClickInfo;
ClickInfo.prototype.requiredProps = ["id"];
function ClickInfo(fig, props){
    mpld3.Plugin.call(this, fig, props);
};

ClickInfo.prototype.draw = function(){
    var obj = mpld3.get_element(this.props.id);
    if (obj == null) {
        console.log("element not found. id=[" + this.props.id + "]");
        return;
    }

    obj.elements().on("mousedown",
        function(d, i) {
            alert("clicked on points[" + i + "]");
        });
}
