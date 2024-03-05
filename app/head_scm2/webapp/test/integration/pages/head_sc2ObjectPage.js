sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'headscm2',
            componentId: 'head_sc2ObjectPage',
            contextPath: '/head_sc2'
        },
        CustomPageDefinitions
    );
});