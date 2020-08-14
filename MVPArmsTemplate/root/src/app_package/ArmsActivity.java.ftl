package ${ativityPackageName};

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.mine.armsutil.BaseActivityImp;
import com.jess.arms.di.component.AppComponent;

import ${packageName}.R;

public class ${pageName}Activity extends BaseActivityImp<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component
                .builder()
                .appComponent(appComponent)
                .view(this)
                .build()
                .inject(this);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {

    }

}
