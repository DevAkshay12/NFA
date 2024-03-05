sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'scmit',
            componentId: 'scm_itObjectPage',
            contextPath: '/scm_it'
        },
        CustomPageDefinitions
    );
});