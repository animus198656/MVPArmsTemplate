package ${contractPackageName};

import android.app.Application;

import com.jess.arms.integration.AppManager;
import com.jess.arms.mvp.IView;
import com.mine.armsutil.BasePresenterImp;

import javax.inject.Inject;

public interface ${pageName}Contract {
    //对于经常使用的关于UI的方法定义在IView中,如显示隐藏进度条,和显示文字消息
    interface View extends IView {

    }
   
    abstract class AbsPresenter extends BasePresenterImp<${pageName}Contract.View> {
        @Inject
        Application mApplication;
        @Inject
        AppManager mAppManager;

        public AbsPresenter(View view) {
            super(view);
        }

        @Override
        public void onDestroy() {
            super.onDestroy();
            this.mAppManager = null;
            this.mApplication = null;
        }
    }
}
