sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'cpccteam',
            componentId: 'cpcc_teamObjectPage',
            contextPath: '/cpcc_team'
        },
        CustomPageDefinitions
    );
});