sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('headscm2.ext.controller.Object', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf headscm2.ext.controller.Object
             */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
			},

			// routing : {
			// 	onAfterBinding : async function(oBindingContext)
			// 	{
			// 		debugger;
			// 		var section = this.getView().getContent()[0].getSections()[3];
			// 		// this.getView().getContent()[0].getSections()[3].destroySubSections()
			// 		section.destroySubSections();
			// 	}
			}
		// }
	});
});
