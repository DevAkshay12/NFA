sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'cpccteam',
            componentId: 'cpcc_teamList',
            contextPath: '/cpcc_team'
        },
        CustomPageDefinitions
    );
});