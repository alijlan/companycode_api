const cds = require('@sap/cds')

module.exports = cds.service.impl( async function(){
    const CCsrv = await cds.connect.to("API_COMPANYCODE_SRV");
    this.on("READ", "CompanyCodes", async(req) => {
        req.query.where("CompanyCode <> '' and CompanyCodeName <> ''");
        return await CCsrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey
            }
        });
    });
});