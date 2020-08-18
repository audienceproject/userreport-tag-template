___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "userreport",
  "version": 1,
  "securityGroups": [],
  "displayName": "UserReport",
  "categories": [
    "SURVEY",
    "ANALYTICS"
  ],
  "brand": {
    "id": "audienceproject_userreport",
    "displayName": "UserReport by AudienceProject",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAAMFBMVEVHcExJRddKRdZJRdZJRdZJRdZLRddJRdZKRtZJRNZJRdZKRdZJRdRJRdVJRdZJRdbE/oZ6AAAAEHRSTlMANXCdr7wI5/8h1FYSf/OJNWFykwAAAfpJREFUeNrtl+tuwzAIRsEXfHfe/22naVlRR+NsDpZWKefnV4lTTEMduLm5ufmXoLHOT+GsQTiBTIiXCIZgQMrxMjkN6oeoQDg2+KiChwNKVKIMGljZAj3GlP0UOccdglcgNzgHHzIOP60wTR1+R8P9zcGnbOAVbf8ULrCXaLfg/QQVscpETZDcZ+ySTHQE2L/yjjLRENQQd0KViYJgiw82mSgIMpfLMlEQdC7XZaIgCFwuyERB4Lick4mCoHC5IhMFAdi4Y18kGgKyezWSidIuws25DWXyBtu0wC/AC4LmKpxQXbogqL0bGl/3u4MpAWehJTggtRAjTgt4M3uDog9C43mfzgr4PtmzbaUgpoRYSrO57+uULgpgiyM6wlUBuSjQ3UXk4yFG5UmuR4Ze4KJgPIeguIswR4GtoCcgMD8UDtXvpmi/Hd23uubyW7GUgkhLb9c093+w/h1t/Vsm77WtEkxBdRu+J0OPgodTDmxAh9fYeEgofxHYAwHGAR5/L0A4bGHERgPBuAG5mcfnNBZ4gkPIxiE+nQsswQi0/eSchoJuEU7BYtr2TBDn1L6FTDMFYRIy/en3xALQItmn544FeqBnQygsUKQEVnRlgRyFEKiOggF10KsL5CikYN0oYA3JLhbwKGAdJSwU8CiAWTMKWAzCzc3NzTvwAWmiTTMYiL2XAAAAAElFTkSuQmCC"
  },
  "description": "Installs UserReport to your websites.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "action",
    "displayName": "Action",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "init",
        "displayValue": "Initialize account"
      },
      {
        "value": "trackSection",
        "displayValue": "Manually track section pageview"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "init"
  },
  {
    "type": "TEXT",
    "name": "accountId",
    "displayName": "Account ID",
    "simpleValueType": true,
    "help": "You can get it from media tiles page, for instance in “https://app.userreport.com/accountId/media” it is “accountId”.",
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^[\\w-+]+$"
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "init",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advancedGroup",
    "displayName": "Advanced params",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "mediaId",
        "displayName": "Media ID",
        "simpleValueType": true,
        "help": "You can get it from media edit page, for instance in “https://app.userreport.com/accountId/media/mediaId” it is “mediaId”.",
        "alwaysInSummary": false,
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^[0-9a-z]{8}(?:-[0-9a-z]{4}){3}-[0-9a-z]{12}$"
            ]
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "sectionId",
        "displayName": "Section ID",
        "simpleValueType": true,
        "help": "You can get it from section edit page, for instance in “https://app.userreport.com/accountId/media/mediaId/sections/sectionId” it is “sectionId”.",
        "alwaysInSummary": false,
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^[0-9a-z]{8}(?:-[0-9a-z]{4}){3}-[0-9a-z]{12}$"
            ]
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "consentStorageDisabled",
        "displayName": "Disable cookie storage consent",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "",
            "displayValue": "No (default)"
          }
        ],
        "simpleValueType": true,
        "help": "To be used in combination with a dynamic cookie consent framework. This variable should contain a value indicating whether the user consented to cookie storage or not. This is not relevant when using a Consent Management Platform (CMP).",
        "defaultValue": ""
      }
    ],
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "init",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "manualSectionId",
    "displayName": "Section ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^[0-9a-z]{8}(?:-[0-9a-z]{4}){3}-[0-9a-z]{12}$"
        ]
      }
    ],
    "help": "You can get it from section edit page, for instance in “https://app.userreport.com/accountId/media/mediaId/sections/sectionId” it is “sectionId”.",
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "trackSection",
        "type": "EQUALS"
      }
    ],
    "alwaysInSummary": false
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const logToConsole = require('logToConsole');
const createQueue = require('createQueue');
const encodeUriComponent = require('encodeUriComponent');
const injectScript = require('injectScript');

if (data.action === 'init') {
  logToConsole('Initializing account');

  if (data.accountId) {
    logToConsole('Account ID is ' + data.accountId);

    const urqPush = createQueue('_urq');
    if (data.mediaId) {
      urqPush(['setMediaId', data.mediaId]);
      logToConsole('Media ID is ' + data.mediaId);
    }
    if (data.sectionId) {
      urqPush(['setSectionId', data.sectionId]);
      logToConsole('Section ID is ' + data.sectionId);
    }
    if (data.consentStorageDisabled) {
      urqPush(['setConsents', {
        storage: false
      }]);
      logToConsole('Storage consent is disabled');
    }

    const scriptHref = 'https://sak.userreport.com/' + encodeUriComponent(data.accountId) + '/launcher.js';
    logToConsole('Injecting UserReport script from ' + scriptHref);

    injectScript(scriptHref, () => {
      data.gtmOnSuccess();
      logToConsole('UserReport script loaded');
    }, () => {
      data.gtmOnFailure();
      logToConsole('UserReport script failed');
    }, 'userreport');
  } else {
    data.gtmOnFailure();
    logToConsole('Account ID is not provided');
  }
}

else if (data.action === 'trackSection') {
  logToConsole('Tracking section pageview');

  if (data.manualSectionId) {
    const urqPush = createQueue('_urq');

    urqPush(['trackSectionPageView', data.manualSectionId]);
    logToConsole('Section ID is ' + data.manualSectionId);

    data.gtmOnSuccess();
    logToConsole('Section pageview tracked');
  } else {
    data.gtmOnFailure();
    logToConsole('Section ID is not provided');
  }
}

else {
  data.gtmOnFailure();
  logToConsole('Unknown action called');
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://sak.userreport.com/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_urq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: No action
  code: |-
    runCode();

    assertApi('gtmOnSuccess').wasNotCalled();
    assertApi('gtmOnFailure').wasCalled();
- name: Init / Account ID is missing
  code: |-
    runCode({
      action: 'init',
    });

    assertApi('gtmOnSuccess').wasNotCalled();
    assertApi('gtmOnFailure').wasCalled();
- name: Init / Account ID is provided
  code: |-
    mock('injectScript', (url, onSuccess) => {
      onSuccess();
    });

    runCode({
      action: 'init',
      accountId: 'audienceproject',
    });

    assertApi('createQueue').wasCalledWith('_urq');
    assertApi('injectScript').wasCalled();

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Init / Script loaded for media
  code: |-
    mock('injectScript', (url, onSuccess) => {
      onSuccess();
    });

    runCode({
      action: 'init',
      accountId: 'audienceproject',
      mediaId: '1',
    });

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Init / Script loaded for section
  code: |-
    mock('injectScript', (url, onSuccess) => {
      onSuccess();
    });

    runCode({
      action: 'init',
      accountId: 'audienceproject',
      mediaId: '1',
      sectionId: '2',
    });

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Init / Script failed
  code: "mock('injectScript', (url, onSuccess, onFailure, cache) => {\n  assertThat(cache).isEqualTo('userreport');\n\
    \  \n  onFailure();\n});\n\nrunCode({\n  action: 'init',\n  accountId: 'audienceproject',\n\
    });\n\nassertApi('gtmOnSuccess').wasNotCalled();\nassertApi('gtmOnFailure').wasCalled();"
- name: Track section / Section ID is missing
  code: |-
    runCode({
      action: 'trackSection',
    });

    assertApi('gtmOnSuccess').wasNotCalled();
    assertApi('gtmOnFailure').wasCalled();
- name: Track section / Section ID is provided
  code: |-
    runCode({
      action: 'trackSection',
      manualSectionId: '3',
    });

    assertApi('createQueue').wasCalledWith('_urq');

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();


___NOTES___

Created on 8/18/2020, 5:10:25 PM
