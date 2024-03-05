sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'headscm2',
            componentId: 'head_sc2List',
            contextPath: '/head_sc2'
        },
        CustomPageDefinitions
    );
});