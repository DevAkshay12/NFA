sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'headscm2/test/integration/FirstJourney',
		'headscm2/test/integration/pages/head_sc2List',
		'headscm2/test/integration/pages/head_sc2ObjectPage'
    ],
    function(JourneyRunner, opaJourney, head_sc2List, head_sc2ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('headscm2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThehead_sc2List: head_sc2List,
					onThehead_sc2ObjectPage: head_sc2ObjectPage
                }
            },
            opaJourney.run
        );
    }
);