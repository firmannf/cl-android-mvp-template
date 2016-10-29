package ${packageName}.main;

import android.content.Context;
import ${superClassFqcn};
import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

import ${packageName}.R;

public class ${activityClass} extends ${superClass} implements ${activityClass}Contract.View {

    private ${activityClass}Contract.Presenter presenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        presenter = new ${activityClass}Presenter(this);
        presenter.start();

<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">

    @Override
    public Context getContext() {
        return this;
    }
}