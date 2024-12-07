using { companycode_api as ccapi } from '../db/schema.cds';

service CompanyCodeSrv {
    entity CompanyCodes as projection on ccapi.Companies;
}