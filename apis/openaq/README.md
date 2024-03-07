# OpenAQ - Jetbrains API Client

## General API description

OpenAQ API - https://docs.openaq.org

* API basepath : [https://api.openaq.org](https://api.openaq.org)
* Version : 2.0.0

## Documentation for API Endpoints

All URIs are relative to *https://api.openaq.org*, but will link to the `.http` file that contains the endpoint definition.
There may be multiple requests for a single endpoint, one for each example described in the OpenAPI specification.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*V1Api* | [**citiesGetv1V1CitiesGet**](Apis/V1Api.http#citiesgetv1v1citiesget) | **GET** /v1/cities | Get cities
*V1Api* | [**countriesGetV1CountriesCountryIdGet**](Apis/V1Api.http#countriesgetv1countriescountryidget) | **GET** /v1/countries/{country_id} | Get country by ID
*V1Api* | [**countriesGetv1V1CountriesGet**](Apis/V1Api.http#countriesgetv1v1countriesget) | **GET** /v1/countries | Get countries
*V1Api* | [**latestV1GetV1LatestGet**](Apis/V1Api.http#latestv1getv1latestget) | **GET** /v1/latest | Get latest measurements
*V1Api* | [**latestV1GetV1LatestLocationIdGet**](Apis/V1Api.http#latestv1getv1latestlocationidget) | **GET** /v1/latest/{location_id} | Get latest measurements by location ID
*V1Api* | [**locationsv1GetV1LocationsGet**](Apis/V1Api.http#locationsv1getv1locationsget) | **GET** /v1/locations | Get locations
*V1Api* | [**locationsv1GetV1LocationsLocationIdGet**](Apis/V1Api.http#locationsv1getv1locationslocationidget) | **GET** /v1/locations/{location_id} | Get location by ID
*V1Api* | [**measurementsGetV1V1MeasurementsGet**](Apis/V1Api.http#measurementsgetv1v1measurementsget) | **GET** /v1/measurements | Get a list of measurements
*V1Api* | [**parametersGetv1V1ParametersGet**](Apis/V1Api.http#parametersgetv1v1parametersget) | **GET** /v1/parameters | Get parameters
*V1Api* | [**sourcesV1GetV1SourcesGet**](Apis/V1Api.http#sourcesv1getv1sourcesget) | **GET** /v1/sources | Sources
*V2Api* | [**averagesV2GetV2AveragesGet**](Apis/V2Api.http#averagesv2getv2averagesget) | **GET** /v2/averages | Get averaged values
*V2Api* | [**citiesGetV2CitiesGet**](Apis/V2Api.http#citiesgetv2citiesget) | **GET** /v2/cities | Get cities
*V2Api* | [**countriesGetV2CountriesCountryIdGet**](Apis/V2Api.http#countriesgetv2countriescountryidget) | **GET** /v2/countries/{country_id} | Get country by ID
*V2Api* | [**countriesGetV2CountriesGet**](Apis/V2Api.http#countriesgetv2countriesget) | **GET** /v2/countries | Get countries
*V2Api* | [**latestGetV2LatestGet**](Apis/V2Api.http#latestgetv2latestget) | **GET** /v2/latest | Get latest measurements
*V2Api* | [**latestGetV2LatestLocationIdGet**](Apis/V2Api.http#latestgetv2latestlocationidget) | **GET** /v2/latest/{location_id} | Get latest measurements by location ID
*V2Api* | [**locationsGetV2LocationsGet**](Apis/V2Api.http#locationsgetv2locationsget) | **GET** /v2/locations | Get locations
*V2Api* | [**locationsGetV2LocationsLocationIdGet**](Apis/V2Api.http#locationsgetv2locationslocationidget) | **GET** /v2/locations/{location_id} | Get a location by ID
*V2Api* | [**measurementsGetV2MeasurementsGet**](Apis/V2Api.http#measurementsgetv2measurementsget) | **GET** /v2/measurements | Get measurements
*V2Api* | [**mfrGetV2ManufacturersGet**](Apis/V2Api.http#mfrgetv2manufacturersget) | **GET** /v2/manufacturers | Get manufacturers
*V2Api* | [**modelGetV2ModelsGet**](Apis/V2Api.http#modelgetv2modelsget) | **GET** /v2/models | Get models
*V2Api* | [**parametersGetV2ParametersGet**](Apis/V2Api.http#parametersgetv2parametersget) | **GET** /v2/parameters | Get parameters
*V2Api* | [**projectsGetV2ProjectsGet**](Apis/V2Api.http#projectsgetv2projectsget) | **GET** /v2/projects | Projects
*V2Api* | [**projectsGetV2ProjectsProjectIdGet**](Apis/V2Api.http#projectsgetv2projectsprojectidget) | **GET** /v2/projects/{project_id} | Project by ID
*V2Api* | [**readmeGetV2SourcesReadmeSlugGet**](Apis/V2Api.http#readmegetv2sourcesreadmeslugget) | **GET** /v2/sources/readme/{slug} | Source Readme
*V2Api* | [**sourcesGetV2SourcesGet**](Apis/V2Api.http#sourcesgetv2sourcesget) | **GET** /v2/sources | Sources
*V2Api* | [**summaryGetV2SummaryGet**](Apis/V2Api.http#summarygetv2summaryget) | **GET** /v2/summary | Platform Summary


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