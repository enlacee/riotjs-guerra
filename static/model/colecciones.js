/**
* # colecciones.js
*/

env.colecciones.traerDatos = function(href) {
	var me = this;

	this.load(href)
		.then(function(){
			env.tag_coleccion_lista.trigger('render', me);
		});
}
