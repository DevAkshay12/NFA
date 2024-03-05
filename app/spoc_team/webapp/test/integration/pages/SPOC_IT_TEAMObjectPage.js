sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'spocteam',
            componentId: 'SPOC_IT_TEAMObjectPage',
            contextPath: '/SPOC_IT_TEAM'
        },
        CustomPageDefinitions
    );
});