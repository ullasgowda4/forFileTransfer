let request = require("request-promise");
let body = {
  loanDetails: {
    customerID: "0010k00000OuQLSAA3",
    source: "Inbound Call",
    subsource: "0",
    bu: "Cross Sell PL",
    referralChannel: "a2V0I000000rJHKUA2",
    campaignID: "0",
    userID: "0050k000000lhbCAAQ",
    esignValue: "false",
    loanIDValue: "0",
    isDownsized: "true",
    eligibleTenures: "24,36",
    preApprovedReducingRoi: "",
    maxAllowedAPIAmount: "150000",
    maxAllowedLoanAmount: "50000.00",
    netDisbursalAmount: "57000",
    leadID: "0061626417",
    loanTenure: "24",
    selectedAmount: "50000",
    emiAmount: "4500",
    processingFeeAmount: "",
    sgstTaxValue: "",
    cgstTaxValue: "",
    processingFeePercent: "2.49",
    sgstPercent: "9",
    cgstPercent: "9.0",
    otherCharges: "299.00",
    privilegeLevel: "Regular",
    preApprovedRoi: "24.00",
    calculatedROIReducing: "36.21"
  },
  residentialAddress: {
    resaddressLine1: "14/303 CHB",
    resaddressLine2: "JODHPUR",
    resaddressLine3: "",
    reslandMark: "Rajasthan",
    rescity: "Mumbai",
    resstate: "Maharashtra",
    respincode: "400013",
    respropertyStatus: "0",
    resisDataPresent: "true"
  },
  employmentDetail: {
    employmentType: "Salaried",
    employerName: "techjini",
    workEmailAddress: "harshitha.ks@techjini.com"
  },
  employerAddress: {
    empaddressLine1: "jp nagar",
    empaddressLine2: "2nd phase",
    empaddressLine3: "24th main",
    emplandMark: "Above kfc",
    empcity: "bengaluru",
    empstate: "bengaluru",
    emppincode: "560035",
    presentWorkExpYears: "",
    presentWorkExpMonths: "",
    workisDataPresent: "",
    annualGrossIncome: "",
    empisDataPresent: "false"
  },
  demographicDetail: {
    firstName: "LAXMAN",
    middleName: "",
    lastName: "TEKCHANDANI",
    gender: "Male",
    dateOfBirth: "1963-06-10",
    maritalStatus: "Married",
    mobile: "7891162122",
    personalEmail: "laxmanji@26gmail.comxyz",
    crn: "6582784"
  },
  bankDetail: {
    bankName: "BOI-BANK OF INDIA",
    accountNumber: "660010310003335",
    accountType: "SAVINGS",
    ifscCode: "BKID0006600",
    micrCode: "302013002",
    bankCode: "013",
    ecsID: "11528240-A-1",
    ecsValidity: "02-DEC-2028",
    balance: "107627",
    ecsMaxLimit: "118000"
  },
  identityProof: {
    voterIDNumber: "",
    panNumber: "AEKPT8158C",
    passportNumber: "",
    drivingLicense: "",
    aadharNumber: ""
  },
  dropOffStatus: {
    personalIsCorrect: "false",
    personalIsDrop: "false",
    employmentIsEdited: "true",
    employmentIsDrop: "false",
    bankIsCorrect: "false",
    bankIsDrop: "false"
  },
  loanInformation: {
    customerOfferURL: "capitalfirst.com",
    loanStatus: "Success",
    loanType: "Paperless",
    completeStatus: "1",
    fetchPaperlessRequest: "",
    fetchPaperlessResponse: "",
    ecsAPIRequest: "",
    ecsAPIResponse: "",
    createPaperlessRequest: "",
    createPaperlessResponse: "",
    updatePaperlessRequest: "",
    updatePaperlessResponse: ""
  },
  analysis: {
    landingpagein: "Arrived",
    landingpageout: "Moved",
    loanselectionin: "Arrived",
    loanselectionout: "Moved",
    emidetailin: "Arrived",
    emidetailout: "Moved",
    loandetailin: "Arrived",
    loandetailout: "Moved",
    verifyotpin: "Arrived",
    verifyotpout: "Moved",
    personaldetailin: "Arrived",
    personaldetailout: "",
    bankdetailin: "",
    bankdetailout: "",
    employmentdetailin: "",
    employmentdetailout: ""
  }
};
request({
  method: "POST",
  url: "http://www.capitalfirst.com/website/Api/createLoan",
  body: body,
  headers: {
    "Content-Type": "application/json",
    "x-api-key": "t!rh@K)Fu{=g"
  },
  json: true
})
  .then(function(response) {
    console.log("response from save api", response);
    return response;
  })
  .catch(err => {
    console.log("Error in fetching SAVE_API");
  });
