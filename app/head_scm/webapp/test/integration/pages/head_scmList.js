sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'headscm',
            componentId: 'head_scmList',
            contextPath: '/head_scm'
        },
        CustomPageDefinitions
    );
});