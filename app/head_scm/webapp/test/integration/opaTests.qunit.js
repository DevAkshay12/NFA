sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'headscm/test/integration/FirstJourney',
		'headscm/test/integration/pages/head_scmList',
		'headscm/test/integration/pages/head_scmObjectPage'
    ],
    function(JourneyRunner, opaJourney, head_scmList, head_scmObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('headscm') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThehead_scmList: head_scmList,
					onThehead_scmObjectPage: head_scmObjectPage
                }
            },
            opaJourney.run
        );
    }
);