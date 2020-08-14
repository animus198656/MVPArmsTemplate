package ${fragmentPackageName};

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.jess.arms.di.component.AppComponent;
import com.mine.armsutil.BaseFragmentImp;

import ${packageName}.R;


public class ${pageName}Fragment extends BaseFragmentImp<${pageName}Presenter> implements ${pageName}Contract.View{

    public static ${pageName}Fragment newInstance() {
        ${pageName}Fragment fragment = new ${pageName}Fragment();
        return fragment;
    }

    @Override
    public void setupFragmentComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component
                .builder()
                .appComponent(appComponent)
                .view(this)
                .build()
                .inject(this);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${fragmentLayoutName};
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {

    }

}
