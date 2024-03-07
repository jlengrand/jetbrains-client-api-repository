# Machines API - Jetbrains API Client

## General API description

# Introduction  Fly Machines are the compute behind the Fly.io platform. They are fast-launching VMs that can be started and stopped at subsecond speeds. A Machine is the configuration and state for a single VM running on our platform. Every Machine will belong to a Fly App; Apps can have more than one Machine. Read more [here](https://fly.io/docs/machines/).  The Machines REST API allows you to provison and manage Apps, Machines and Volumes on the Fly.io platform. To manage other Fly.io resources like organizations, use the [GraphQL API](https://fly.io/docs/networking/custom-domains-with-fly/#graphql-api-notes).  ## Authentication  All requests must include the Fly API Token in the HTTP Headers as follows:  &#x60;&#x60;&#x60; Authorization: Bearer [TOKEN] &#x60;&#x60;&#x60;  You can get your API token using [flyctl](https://fly.io/docs/hands-on/install-flyctl/) by running &#x60;fly auth token&#x60;  ## Base URL  The easiest (and recommended) way to connect to the Machines API is to use the public &#x60;api.machines.dev&#x60; endpoint, a simpler and more performant alternative to connecting over WireGuard. You can still access your Machines directly over a WireGuard VPN, and use the private Machines API endpoint: &#x60;http://_api.internal:4280&#x60;. This method requires more setup.  Follow the [instructions](https://fly.io/docs/networking/private-networking/#private-network-vpn) to set up a permanent WireGuard connection to your Fly.io [IPv6 private network](https://fly.io/docs/networking/private-networking/). Once you’re connected, Fly internal DNS should expose the Machines API endpoint at: &#x60;http://_api.internal:4280&#x60;  ## Response Codes  The API uses conventional HTTP status codes to signal whether a request was successful or not.  Typically, 2xx HTTP status codes denote successful operations, 4xx codes imply failures related to the user, and 5xx codes suggest problems with the infrastructure.  | Status | Description                                 | | :----: | ------------------------------------------- | | &#x60;200&#x60;  | Successful request.                         | | &#x60;201&#x60;  | Created successfully.                       | | &#x60;202&#x60;  | Successful request. No content.             | | &#x60;400&#x60;  | Check that the parameters were correct.     | | &#x60;401&#x60;  | The API key used was missing or invalid.    | | &#x60;404&#x60;  | The resource was not found.                 | | &#x60;5xx&#x60;  | Indicates an error with Fly.io API servers. | 

* API basepath : [https://api.machines.dev/v1](https://api.machines.dev/v1)
* Version : 1.0

## Documentation for API Endpoints

All URIs are relative to *https://api.machines.dev/v1*, but will link to the `.http` file that contains the endpoint definition.
There may be multiple requests for a single endpoint, one for each example described in the OpenAPI specification.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AppsApi* | [**appsCreate**](Apis/AppsApi.http#appscreate) | **POST** /apps | Create App
*AppsApi* | [**appsDelete**](Apis/AppsApi.http#appsdelete) | **DELETE** /apps/{app_name} | Destroy App
*AppsApi* | [**appsList**](Apis/AppsApi.http#appslist) | **GET** /apps | List Apps
*AppsApi* | [**appsShow**](Apis/AppsApi.http#appsshow) | **GET** /apps/{app_name} | Get App
*MachinesApi* | [**machinesCordon**](Apis/MachinesApi.http#machinescordon) | **POST** /apps/{app_name}/machines/{machine_id}/cordon | Cordon Machine
*MachinesApi* | [**machinesCreate**](Apis/MachinesApi.http#machinescreate) | **POST** /apps/{app_name}/machines | Create Machine
*MachinesApi* | [**machinesCreateLease**](Apis/MachinesApi.http#machinescreatelease) | **POST** /apps/{app_name}/machines/{machine_id}/lease | Create Lease
*MachinesApi* | [**machinesDelete**](Apis/MachinesApi.http#machinesdelete) | **DELETE** /apps/{app_name}/machines/{machine_id} | Destroy Machine
*MachinesApi* | [**machinesDeleteMetadata**](Apis/MachinesApi.http#machinesdeletemetadata) | **DELETE** /apps/{app_name}/machines/{machine_id}/metadata/{key} | Delete Metadata
*MachinesApi* | [**machinesExec**](Apis/MachinesApi.http#machinesexec) | **POST** /apps/{app_name}/machines/{machine_id}/exec | Execute Command
*MachinesApi* | [**machinesList**](Apis/MachinesApi.http#machineslist) | **GET** /apps/{app_name}/machines | List Machines
*MachinesApi* | [**machinesListEvents**](Apis/MachinesApi.http#machineslistevents) | **GET** /apps/{app_name}/machines/{machine_id}/events | List Events
*MachinesApi* | [**machinesListProcesses**](Apis/MachinesApi.http#machineslistprocesses) | **GET** /apps/{app_name}/machines/{machine_id}/ps | List Processes
*MachinesApi* | [**machinesListVersions**](Apis/MachinesApi.http#machineslistversions) | **GET** /apps/{app_name}/machines/{machine_id}/versions | List Versions
*MachinesApi* | [**machinesReleaseLease**](Apis/MachinesApi.http#machinesreleaselease) | **DELETE** /apps/{app_name}/machines/{machine_id}/lease | Release Lease
*MachinesApi* | [**machinesRestart**](Apis/MachinesApi.http#machinesrestart) | **POST** /apps/{app_name}/machines/{machine_id}/restart | Restart Machine
*MachinesApi* | [**machinesShow**](Apis/MachinesApi.http#machinesshow) | **GET** /apps/{app_name}/machines/{machine_id} | Get Machine
*MachinesApi* | [**machinesShowLease**](Apis/MachinesApi.http#machinesshowlease) | **GET** /apps/{app_name}/machines/{machine_id}/lease | Get Lease
*MachinesApi* | [**machinesShowMetadata**](Apis/MachinesApi.http#machinesshowmetadata) | **GET** /apps/{app_name}/machines/{machine_id}/metadata | Get Metadata
*MachinesApi* | [**machinesSignal**](Apis/MachinesApi.http#machinessignal) | **POST** /apps/{app_name}/machines/{machine_id}/signal | Signal Machine
*MachinesApi* | [**machinesStart**](Apis/MachinesApi.http#machinesstart) | **POST** /apps/{app_name}/machines/{machine_id}/start | Start Machine
*MachinesApi* | [**machinesStop**](Apis/MachinesApi.http#machinesstop) | **POST** /apps/{app_name}/machines/{machine_id}/stop | Stop Machine
*MachinesApi* | [**machinesUncordon**](Apis/MachinesApi.http#machinesuncordon) | **POST** /apps/{app_name}/machines/{machine_id}/uncordon | Uncordon Machine
*MachinesApi* | [**machinesUpdate**](Apis/MachinesApi.http#machinesupdate) | **POST** /apps/{app_name}/machines/{machine_id} | Update Machine
*MachinesApi* | [**machinesUpdateMetadata**](Apis/MachinesApi.http#machinesupdatemetadata) | **POST** /apps/{app_name}/machines/{machine_id}/metadata/{key} | Update Metadata
*MachinesApi* | [**machinesWait**](Apis/MachinesApi.http#machineswait) | **GET** /apps/{app_name}/machines/{machine_id}/wait | Wait for State
*VolumesApi* | [**createVolumeSnapshot**](Apis/VolumesApi.http#createvolumesnapshot) | **POST** /apps/{app_name}/volumes/{volume_id}/snapshots | Create Snapshot
*VolumesApi* | [**volumeDelete**](Apis/VolumesApi.http#volumedelete) | **DELETE** /apps/{app_name}/volumes/{volume_id} | Destroy Volume
*VolumesApi* | [**volumesCreate**](Apis/VolumesApi.http#volumescreate) | **POST** /apps/{app_name}/volumes | Create Volume
*VolumesApi* | [**volumesExtend**](Apis/VolumesApi.http#volumesextend) | **PUT** /apps/{app_name}/volumes/{volume_id}/extend | Extend Volume
*VolumesApi* | [**volumesGetById**](Apis/VolumesApi.http#volumesgetbyid) | **GET** /apps/{app_name}/volumes/{volume_id} | Get Volume
*VolumesApi* | [**volumesList**](Apis/VolumesApi.http#volumeslist) | **GET** /apps/{app_name}/volumes | List Volumes
*VolumesApi* | [**volumesListSnapshots**](Apis/VolumesApi.http#volumeslistsnapshots) | **GET** /apps/{app_name}/volumes/{volume_id}/snapshots | List Snapshots
*VolumesApi* | [**volumesUpdate**](Apis/VolumesApi.http#volumesupdate) | **POST** /apps/{app_name}/volumes/{volume_id} | Update Volume


## Usage

### Prerequisites

You need [IntelliJ](https://www.jetbrains.com/idea/) to be able to run those queries. More information can be found [here](https://www.jetbrains.com/help/idea/http-client-in-product-code-editor.html).
You may have some luck running queries using the [Code REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) as well, but your mileage may vary.

### Variables and Environment files

* Generally speaking, you want queries to be specific using custom variables. All variables in the `.http` files have the `` format.
* You can create [public or private environment files](https://www.jetbrains.com/help/idea/exploring-http-syntax.html#environment-variables) to dynamically replace the variables at runtime.

_Note: don't commit private environment files! They typically will contain sensitive information like API Keys._

### Customizations

If you have control over the generation of the files here, there are two main things you can do

* Select elements to replace as variables during generation. The process is case-sensitive. For example, API_KEY -> 
    * For this, run the generation with the `bodyVariables` property, followed by a "-" separated list of variables
    * Example: `--additional-properties bodyVariables=YOUR_MERCHANT_ACCOUNT-YOUR_COMPANY_ACCOUNT-YOUR_BALANCE_PLATFORM`
* Add custom headers to _all_ requests. This can be useful for example if your specifications are missing [security schemes](https://github.com/github/rest-api-description/issues/237).
    * For this, run the generation with the `customHeaders` property, followed by a "&" separated list of variables
    * Example : `--additional-properties=customHeaders="Cookie:X-API-KEY="&"Accept-Encoding=gzip"`

_This client was generated by the [jetbrains-http-client](https://openapi-generator.tech/docs/generators/jetbrains-http-client) generator of OpenAPI Generator_