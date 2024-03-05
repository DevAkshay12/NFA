sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'spocteam',
            componentId: 'SPOC_IT_TEAMList',
            contextPath: '/SPOC_IT_TEAM'
        },
        CustomPageDefinitions
    );
});