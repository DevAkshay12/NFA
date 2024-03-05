sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'headscm1',
            componentId: 'head_sc1List',
            contextPath: '/head_sc1'
        },
        CustomPageDefinitions
    );
});