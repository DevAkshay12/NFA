const cds = require('@sap/cds');
module.exports = async function () {
    let {
        Files,
    }=this.entities;

    this.before('CREATE', 'Files', req => {
        console.log('Create called')
        console.log(JSON.stringify(req.data))
        req.data.url = `/odata/v4/my/Files(ID=${req.data.ID},id1='${req.data.id1}')/content`
    })

    this.before('READ', 'Files', req => {
        //check content-type
        console.log('content-type: ', req.headers['content-type'])
    });
}