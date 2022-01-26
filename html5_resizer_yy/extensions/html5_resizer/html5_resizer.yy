{
    "id": "897059ab-6c2a-4b63-a648-db09480cff45",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "html5_resizer",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "html5_resizer.gml",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "5bfe710d-8d5b-4d10-8c8a-7ade8873027e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "html5_resizer.js",
            "final": "",
            "functions": [
                {
                    "id": "f0e0fdbb-6e60-b5f2-173d-70c4f8db885d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "html5_resizer_create",
                    "help": "html5_resizer_create()",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_create",
                    "returnType": 2
                },
                {
                    "id": "fe254635-cc21-6123-6710-412def4093e0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "html5_resizer_destroy",
                    "help": "html5_resizer_destroy(q)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_destroy",
                    "returnType": 2
                },
                {
                    "id": "5b69e938-b132-7f0a-f8c7-7952295d321c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "html5_resizer_clear",
                    "help": "html5_resizer_clear(q)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_clear",
                    "returnType": 2
                },
                {
                    "id": "8b2ef4b5-12a8-d0e0-859d-f4ee303d86dc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "html5_resizer_load",
                    "help": "html5_resizer_load(q, url)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_load",
                    "returnType": 2
                },
                {
                    "id": "219192bb-f454-787b-e743-e52914c1a6ae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "html5_resizer_is_loading",
                    "help": "html5_resizer_is_loading(q)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_is_loading",
                    "returnType": 2
                },
                {
                    "id": "a05c5b3b-8ede-5c8d-d60a-0a8abbe10391",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "html5_resizer_is_loaded",
                    "help": "html5_resizer_is_loaded(q)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_is_loaded",
                    "returnType": 2
                },
                {
                    "id": "92e9e8c9-9ab5-da90-3b2e-20858390910f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "html5_resizer_get_width",
                    "help": "html5_resizer_get_width(q)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_get_width",
                    "returnType": 2
                },
                {
                    "id": "b128da72-2d20-e748-b52e-3f43a2713a1a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "html5_resizer_get_height",
                    "help": "html5_resizer_get_height(q)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_get_height",
                    "returnType": 2
                },
                {
                    "id": "8e411d14-e4ef-f0ef-42eb-f2e18b4f0d9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "html5_resizer_resize",
                    "help": "html5_resizer_resize(q, w, h, smooth)",
                    "hidden": false,
                    "kind": 5,
                    "name": "html5_resizer_resize",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 5,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}