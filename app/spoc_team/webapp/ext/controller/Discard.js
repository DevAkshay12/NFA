sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        discard: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
