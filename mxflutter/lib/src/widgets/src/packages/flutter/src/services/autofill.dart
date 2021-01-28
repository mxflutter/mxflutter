//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/autofill.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/text_input.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAutofillSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_autofillHintsAddressCity.funName] = _autofillHintsAddressCity;
  m[_autofillHintsAddressCityAndState.funName] = _autofillHintsAddressCityAndState;
  m[_autofillHintsAddressState.funName] = _autofillHintsAddressState;
  m[_autofillHintsBirthday.funName] = _autofillHintsBirthday;
  m[_autofillHintsBirthdayDay.funName] = _autofillHintsBirthdayDay;
  m[_autofillHintsBirthdayMonth.funName] = _autofillHintsBirthdayMonth;
  m[_autofillHintsBirthdayYear.funName] = _autofillHintsBirthdayYear;
  m[_autofillHintsCountryCode.funName] = _autofillHintsCountryCode;
  m[_autofillHintsCountryName.funName] = _autofillHintsCountryName;
  m[_autofillHintsCreditCardExpirationDate.funName] = _autofillHintsCreditCardExpirationDate;
  m[_autofillHintsCreditCardExpirationDay.funName] = _autofillHintsCreditCardExpirationDay;
  m[_autofillHintsCreditCardExpirationMonth.funName] = _autofillHintsCreditCardExpirationMonth;
  m[_autofillHintsCreditCardExpirationYear.funName] = _autofillHintsCreditCardExpirationYear;
  m[_autofillHintsCreditCardFamilyName.funName] = _autofillHintsCreditCardFamilyName;
  m[_autofillHintsCreditCardGivenName.funName] = _autofillHintsCreditCardGivenName;
  m[_autofillHintsCreditCardMiddleName.funName] = _autofillHintsCreditCardMiddleName;
  m[_autofillHintsCreditCardName.funName] = _autofillHintsCreditCardName;
  m[_autofillHintsCreditCardNumber.funName] = _autofillHintsCreditCardNumber;
  m[_autofillHintsCreditCardSecurityCode.funName] = _autofillHintsCreditCardSecurityCode;
  m[_autofillHintsCreditCardType.funName] = _autofillHintsCreditCardType;
  m[_autofillHintsEmail.funName] = _autofillHintsEmail;
  m[_autofillHintsFamilyName.funName] = _autofillHintsFamilyName;
  m[_autofillHintsFullStreetAddress.funName] = _autofillHintsFullStreetAddress;
  m[_autofillHintsGender.funName] = _autofillHintsGender;
  m[_autofillHintsGivenName.funName] = _autofillHintsGivenName;
  m[_autofillHintsImpp.funName] = _autofillHintsImpp;
  m[_autofillHintsJobTitle.funName] = _autofillHintsJobTitle;
  m[_autofillHintsLanguage.funName] = _autofillHintsLanguage;
  m[_autofillHintsLocation.funName] = _autofillHintsLocation;
  m[_autofillHintsMiddleInitial.funName] = _autofillHintsMiddleInitial;
  m[_autofillHintsMiddleName.funName] = _autofillHintsMiddleName;
  m[_autofillHintsName.funName] = _autofillHintsName;
  m[_autofillHintsNamePrefix.funName] = _autofillHintsNamePrefix;
  m[_autofillHintsNameSuffix.funName] = _autofillHintsNameSuffix;
  m[_autofillHintsNewPassword.funName] = _autofillHintsNewPassword;
  m[_autofillHintsNewUsername.funName] = _autofillHintsNewUsername;
  m[_autofillHintsNickname.funName] = _autofillHintsNickname;
  m[_autofillHintsOneTimeCode.funName] = _autofillHintsOneTimeCode;
  m[_autofillHintsOrganizationName.funName] = _autofillHintsOrganizationName;
  m[_autofillHintsPassword.funName] = _autofillHintsPassword;
  m[_autofillHintsPhoto.funName] = _autofillHintsPhoto;
  m[_autofillHintsPostalAddress.funName] = _autofillHintsPostalAddress;
  m[_autofillHintsPostalAddressExtended.funName] = _autofillHintsPostalAddressExtended;
  m[_autofillHintsPostalAddressExtendedPostalCode.funName] = _autofillHintsPostalAddressExtendedPostalCode;
  m[_autofillHintsPostalCode.funName] = _autofillHintsPostalCode;
  m[_autofillHintsStreetAddressLevel1.funName] = _autofillHintsStreetAddressLevel1;
  m[_autofillHintsStreetAddressLevel2.funName] = _autofillHintsStreetAddressLevel2;
  m[_autofillHintsStreetAddressLevel3.funName] = _autofillHintsStreetAddressLevel3;
  m[_autofillHintsStreetAddressLevel4.funName] = _autofillHintsStreetAddressLevel4;
  m[_autofillHintsStreetAddressLine1.funName] = _autofillHintsStreetAddressLine1;
  m[_autofillHintsStreetAddressLine2.funName] = _autofillHintsStreetAddressLine2;
  m[_autofillHintsStreetAddressLine3.funName] = _autofillHintsStreetAddressLine3;
  m[_autofillHintsSublocality.funName] = _autofillHintsSublocality;
  m[_autofillHintsTelephoneNumber.funName] = _autofillHintsTelephoneNumber;
  m[_autofillHintsTelephoneNumberAreaCode.funName] = _autofillHintsTelephoneNumberAreaCode;
  m[_autofillHintsTelephoneNumberCountryCode.funName] = _autofillHintsTelephoneNumberCountryCode;
  m[_autofillHintsTelephoneNumberDevice.funName] = _autofillHintsTelephoneNumberDevice;
  m[_autofillHintsTelephoneNumberExtension.funName] = _autofillHintsTelephoneNumberExtension;
  m[_autofillHintsTelephoneNumberLocal.funName] = _autofillHintsTelephoneNumberLocal;
  m[_autofillHintsTelephoneNumberLocalPrefix.funName] = _autofillHintsTelephoneNumberLocalPrefix;
  m[_autofillHintsTelephoneNumberLocalSuffix.funName] = _autofillHintsTelephoneNumberLocalSuffix;
  m[_autofillHintsTelephoneNumberNational.funName] = _autofillHintsTelephoneNumberNational;
  m[_autofillHintsTransactionAmount.funName] = _autofillHintsTransactionAmount;
  m[_autofillHintsTransactionCurrency.funName] = _autofillHintsTransactionCurrency;
  m[_autofillHintsUrl.funName] = _autofillHintsUrl;
  m[_autofillHintsUsername.funName] = _autofillHintsUsername;
  m[_autofillConfiguration.funName] = _autofillConfiguration;
  return m;
}

var _autofillHintsAddressCity = MXFunctionInvoke("AutofillHints.addressCity", () => AutofillHints.addressCity);
var _autofillHintsAddressCityAndState =
    MXFunctionInvoke("AutofillHints.addressCityAndState", () => AutofillHints.addressCityAndState);
var _autofillHintsAddressState = MXFunctionInvoke("AutofillHints.addressState", () => AutofillHints.addressState);
var _autofillHintsBirthday = MXFunctionInvoke("AutofillHints.birthday", () => AutofillHints.birthday);
var _autofillHintsBirthdayDay = MXFunctionInvoke("AutofillHints.birthdayDay", () => AutofillHints.birthdayDay);
var _autofillHintsBirthdayMonth = MXFunctionInvoke("AutofillHints.birthdayMonth", () => AutofillHints.birthdayMonth);
var _autofillHintsBirthdayYear = MXFunctionInvoke("AutofillHints.birthdayYear", () => AutofillHints.birthdayYear);
var _autofillHintsCountryCode = MXFunctionInvoke("AutofillHints.countryCode", () => AutofillHints.countryCode);
var _autofillHintsCountryName = MXFunctionInvoke("AutofillHints.countryName", () => AutofillHints.countryName);
var _autofillHintsCreditCardExpirationDate =
    MXFunctionInvoke("AutofillHints.creditCardExpirationDate", () => AutofillHints.creditCardExpirationDate);
var _autofillHintsCreditCardExpirationDay =
    MXFunctionInvoke("AutofillHints.creditCardExpirationDay", () => AutofillHints.creditCardExpirationDay);
var _autofillHintsCreditCardExpirationMonth =
    MXFunctionInvoke("AutofillHints.creditCardExpirationMonth", () => AutofillHints.creditCardExpirationMonth);
var _autofillHintsCreditCardExpirationYear =
    MXFunctionInvoke("AutofillHints.creditCardExpirationYear", () => AutofillHints.creditCardExpirationYear);
var _autofillHintsCreditCardFamilyName =
    MXFunctionInvoke("AutofillHints.creditCardFamilyName", () => AutofillHints.creditCardFamilyName);
var _autofillHintsCreditCardGivenName =
    MXFunctionInvoke("AutofillHints.creditCardGivenName", () => AutofillHints.creditCardGivenName);
var _autofillHintsCreditCardMiddleName =
    MXFunctionInvoke("AutofillHints.creditCardMiddleName", () => AutofillHints.creditCardMiddleName);
var _autofillHintsCreditCardName = MXFunctionInvoke("AutofillHints.creditCardName", () => AutofillHints.creditCardName);
var _autofillHintsCreditCardNumber =
    MXFunctionInvoke("AutofillHints.creditCardNumber", () => AutofillHints.creditCardNumber);
var _autofillHintsCreditCardSecurityCode =
    MXFunctionInvoke("AutofillHints.creditCardSecurityCode", () => AutofillHints.creditCardSecurityCode);
var _autofillHintsCreditCardType = MXFunctionInvoke("AutofillHints.creditCardType", () => AutofillHints.creditCardType);
var _autofillHintsEmail = MXFunctionInvoke("AutofillHints.email", () => AutofillHints.email);
var _autofillHintsFamilyName = MXFunctionInvoke("AutofillHints.familyName", () => AutofillHints.familyName);
var _autofillHintsFullStreetAddress =
    MXFunctionInvoke("AutofillHints.fullStreetAddress", () => AutofillHints.fullStreetAddress);
var _autofillHintsGender = MXFunctionInvoke("AutofillHints.gender", () => AutofillHints.gender);
var _autofillHintsGivenName = MXFunctionInvoke("AutofillHints.givenName", () => AutofillHints.givenName);
var _autofillHintsImpp = MXFunctionInvoke("AutofillHints.impp", () => AutofillHints.impp);
var _autofillHintsJobTitle = MXFunctionInvoke("AutofillHints.jobTitle", () => AutofillHints.jobTitle);
var _autofillHintsLanguage = MXFunctionInvoke("AutofillHints.language", () => AutofillHints.language);
var _autofillHintsLocation = MXFunctionInvoke("AutofillHints.location", () => AutofillHints.location);
var _autofillHintsMiddleInitial = MXFunctionInvoke("AutofillHints.middleInitial", () => AutofillHints.middleInitial);
var _autofillHintsMiddleName = MXFunctionInvoke("AutofillHints.middleName", () => AutofillHints.middleName);
var _autofillHintsName = MXFunctionInvoke("AutofillHints.name", () => AutofillHints.name);
var _autofillHintsNamePrefix = MXFunctionInvoke("AutofillHints.namePrefix", () => AutofillHints.namePrefix);
var _autofillHintsNameSuffix = MXFunctionInvoke("AutofillHints.nameSuffix", () => AutofillHints.nameSuffix);
var _autofillHintsNewPassword = MXFunctionInvoke("AutofillHints.newPassword", () => AutofillHints.newPassword);
var _autofillHintsNewUsername = MXFunctionInvoke("AutofillHints.newUsername", () => AutofillHints.newUsername);
var _autofillHintsNickname = MXFunctionInvoke("AutofillHints.nickname", () => AutofillHints.nickname);
var _autofillHintsOneTimeCode = MXFunctionInvoke("AutofillHints.oneTimeCode", () => AutofillHints.oneTimeCode);
var _autofillHintsOrganizationName =
    MXFunctionInvoke("AutofillHints.organizationName", () => AutofillHints.organizationName);
var _autofillHintsPassword = MXFunctionInvoke("AutofillHints.password", () => AutofillHints.password);
var _autofillHintsPhoto = MXFunctionInvoke("AutofillHints.photo", () => AutofillHints.photo);
var _autofillHintsPostalAddress = MXFunctionInvoke("AutofillHints.postalAddress", () => AutofillHints.postalAddress);
var _autofillHintsPostalAddressExtended =
    MXFunctionInvoke("AutofillHints.postalAddressExtended", () => AutofillHints.postalAddressExtended);
var _autofillHintsPostalAddressExtendedPostalCode = MXFunctionInvoke(
    "AutofillHints.postalAddressExtendedPostalCode", () => AutofillHints.postalAddressExtendedPostalCode);
var _autofillHintsPostalCode = MXFunctionInvoke("AutofillHints.postalCode", () => AutofillHints.postalCode);
var _autofillHintsStreetAddressLevel1 =
    MXFunctionInvoke("AutofillHints.streetAddressLevel1", () => AutofillHints.streetAddressLevel1);
var _autofillHintsStreetAddressLevel2 =
    MXFunctionInvoke("AutofillHints.streetAddressLevel2", () => AutofillHints.streetAddressLevel2);
var _autofillHintsStreetAddressLevel3 =
    MXFunctionInvoke("AutofillHints.streetAddressLevel3", () => AutofillHints.streetAddressLevel3);
var _autofillHintsStreetAddressLevel4 =
    MXFunctionInvoke("AutofillHints.streetAddressLevel4", () => AutofillHints.streetAddressLevel4);
var _autofillHintsStreetAddressLine1 =
    MXFunctionInvoke("AutofillHints.streetAddressLine1", () => AutofillHints.streetAddressLine1);
var _autofillHintsStreetAddressLine2 =
    MXFunctionInvoke("AutofillHints.streetAddressLine2", () => AutofillHints.streetAddressLine2);
var _autofillHintsStreetAddressLine3 =
    MXFunctionInvoke("AutofillHints.streetAddressLine3", () => AutofillHints.streetAddressLine3);
var _autofillHintsSublocality = MXFunctionInvoke("AutofillHints.sublocality", () => AutofillHints.sublocality);
var _autofillHintsTelephoneNumber =
    MXFunctionInvoke("AutofillHints.telephoneNumber", () => AutofillHints.telephoneNumber);
var _autofillHintsTelephoneNumberAreaCode =
    MXFunctionInvoke("AutofillHints.telephoneNumberAreaCode", () => AutofillHints.telephoneNumberAreaCode);
var _autofillHintsTelephoneNumberCountryCode =
    MXFunctionInvoke("AutofillHints.telephoneNumberCountryCode", () => AutofillHints.telephoneNumberCountryCode);
var _autofillHintsTelephoneNumberDevice =
    MXFunctionInvoke("AutofillHints.telephoneNumberDevice", () => AutofillHints.telephoneNumberDevice);
var _autofillHintsTelephoneNumberExtension =
    MXFunctionInvoke("AutofillHints.telephoneNumberExtension", () => AutofillHints.telephoneNumberExtension);
var _autofillHintsTelephoneNumberLocal =
    MXFunctionInvoke("AutofillHints.telephoneNumberLocal", () => AutofillHints.telephoneNumberLocal);
var _autofillHintsTelephoneNumberLocalPrefix =
    MXFunctionInvoke("AutofillHints.telephoneNumberLocalPrefix", () => AutofillHints.telephoneNumberLocalPrefix);
var _autofillHintsTelephoneNumberLocalSuffix =
    MXFunctionInvoke("AutofillHints.telephoneNumberLocalSuffix", () => AutofillHints.telephoneNumberLocalSuffix);
var _autofillHintsTelephoneNumberNational =
    MXFunctionInvoke("AutofillHints.telephoneNumberNational", () => AutofillHints.telephoneNumberNational);
var _autofillHintsTransactionAmount =
    MXFunctionInvoke("AutofillHints.transactionAmount", () => AutofillHints.transactionAmount);
var _autofillHintsTransactionCurrency =
    MXFunctionInvoke("AutofillHints.transactionCurrency", () => AutofillHints.transactionCurrency);
var _autofillHintsUrl = MXFunctionInvoke("AutofillHints.url", () => AutofillHints.url);
var _autofillHintsUsername = MXFunctionInvoke("AutofillHints.username", () => AutofillHints.username);
var _autofillConfiguration = MXFunctionInvoke(
  "AutofillConfiguration",
  ({
    String uniqueIdentifier,
    dynamic autofillHints,
    TextEditingValue currentEditingValue,
  }) =>
      AutofillConfiguration(
    uniqueIdentifier: uniqueIdentifier,
    autofillHints: toListT<String>(autofillHints),
    currentEditingValue: currentEditingValue,
  ),
  [
    "uniqueIdentifier",
    "autofillHints",
    "currentEditingValue",
  ],
);
