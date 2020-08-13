package ${presenterPackageName};

<#if needActivity && needFragment>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needActivity>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needFragment>
import com.jess.arms.di.scope.FragmentScope;
</#if>

import ${contractPackageName}.${pageName}Contract;

import javax.inject.Inject;

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Presenter extends ${pageName}Contract.AbsPresenter {

    @Inject
    public ${pageName}Presenter (${pageName}Contract.View rootView) {
        super(rootView);
    }

}
