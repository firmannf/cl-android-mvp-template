<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="root/res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />

    <instantiate from="root/src/app_package/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseView.java" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/main/${activityClass}.java" />

    <instantiate from="root/src/app_package/main/SimpleActivityContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/main/${activityClass}Contract.java" />

    <instantiate from="root/src/app_package/main/SimpleActivityPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/main/${activityClass}Presenter.java" />

    <instantiate from="root/src/app_package/data/BaseModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/BaseModel.java" />

    <instantiate from="root/src/app_package/data/source/remote/APIService.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/source/remote/APIService.java" />

    <open file="${escapeXmlAttribute(srcOut)}/main/${activityClass}.java" />
</recipe>