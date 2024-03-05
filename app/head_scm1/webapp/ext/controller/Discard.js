sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Discard: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
