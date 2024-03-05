sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'spocteam/test/integration/FirstJourney',
		'spocteam/test/integration/pages/SPOC_IT_TEAMList',
		'spocteam/test/integration/pages/SPOC_IT_TEAMObjectPage'
    ],
    function(JourneyRunner, opaJourney, SPOC_IT_TEAMList, SPOC_IT_TEAMObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('spocteam') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSPOC_IT_TEAMList: SPOC_IT_TEAMList,
					onTheSPOC_IT_TEAMObjectPage: SPOC_IT_TEAMObjectPage
                }
            },
            opaJourney.run
        );
    }
);