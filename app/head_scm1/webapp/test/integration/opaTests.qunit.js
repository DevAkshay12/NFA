sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'headscm1/test/integration/FirstJourney',
		'headscm1/test/integration/pages/head_sc1List',
		'headscm1/test/integration/pages/head_sc1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, head_sc1List, head_sc1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('headscm1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThehead_sc1List: head_sc1List,
					onThehead_sc1ObjectPage: head_sc1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);