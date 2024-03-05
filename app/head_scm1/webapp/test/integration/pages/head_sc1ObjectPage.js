sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'headscm1',
            componentId: 'head_sc1ObjectPage',
            contextPath: '/head_sc1'
        },
        CustomPageDefinitions
    );
});