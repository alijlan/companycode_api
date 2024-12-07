namespace companycode_api;

using { API_COMPANYCODE_SRV as srvapi } from '../srv/external/API_COMPANYCODE_SRV.csn';

entity Companies as projection on srvapi.A_CompanyCode {
    key CompanyCode,
        CompanyCodeName,
        CityName,
        Country,
        Currency,
        Language,
        ChartOfAccounts,
        FiscalYearVariant,
        Company
}


