sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'scmit',
            componentId: 'scm_itList',
            contextPath: '/scm_it'
        },
        CustomPageDefinitions
    );
});