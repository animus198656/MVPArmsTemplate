package ${presenterPackageName};

import android.app.Application;

import com.jess.arms.integration.AppManager;
<#if needActivity && needFragment>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needActivity>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needFragment>
import com.jess.arms.di.scope.FragmentScope;
</#if>
import com.mine.armsutil.BaseImpPresenter;
import javax.inject.Inject;

import ${contractPackageName}.${pageName}Contract;

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Presenter extends ${pageName}Contract.AbsPresenter {
    @Inject
    Application mApplication;
    @Inject
    AppManager mAppManager;

    @Inject
    public ${pageName}Presenter (${pageName}Contract.View rootView) {
        super(rootView);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mAppManager = null;
        this.mApplication = null;
    }
}
