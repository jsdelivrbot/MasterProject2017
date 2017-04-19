function sizeOut(v) {
    
    if(v == "DefaultSize")
	return null;
    else if (v.n == "Pixels")
	return (ts(v.v));
    else if (v.n == "Percent")
	return (ts(v.v) + "%");
    else
	throw ("Invalid Tinymce.size"+v);
}

//Main function, tinymce.init

function uw_tinymce_init(r) {
    
    var config = {};

    var width = sizeOut(r._Width);
    if(width != null)
	config.width = width;

    var height = sizeOut(r._Height);
    if(height != null)
	config.height = height;

    //setting the selector
    //config.selector = r._Id;

    //the init function of the tinymce editor

    tinymce.init(r._Id);
    //var src = r._Source;
    //ed.setData(sg(src));
    //ed.on('change', function(e) { sv(src, ed.getData()); });
}

function uw_tinymce_setContent(id, s) {
    //var ed = tinymce.instances[id];
    //if (ed) ed.setData(s);
}