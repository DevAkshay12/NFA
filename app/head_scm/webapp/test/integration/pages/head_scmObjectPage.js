sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'headscm',
            componentId: 'head_scmObjectPage',
            contextPath: '/head_scm'
        },
        CustomPageDefinitions
    );
});