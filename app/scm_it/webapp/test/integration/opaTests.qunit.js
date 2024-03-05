sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'scmit/test/integration/FirstJourney',
		'scmit/test/integration/pages/scm_itList',
		'scmit/test/integration/pages/scm_itObjectPage'
    ],
    function(JourneyRunner, opaJourney, scm_itList, scm_itObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('scmit') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThescm_itList: scm_itList,
					onThescm_itObjectPage: scm_itObjectPage
                }
            },
            opaJourney.run
        );
    }
);