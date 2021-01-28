package com.imatrixteam.mxflutter2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import androidx.annotation.Nullable;

/**
 * create by ericpsun on 2021/1/14.
 */
public class SplashActivity extends Activity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_main);
//        JsEngineLoader.getInstance().setKeepEngineInstance(true);
//        JsEngineLoader.getInstance().preloadJsEngine(getApplication());
        findViewById(R.id.open_flutter_tv).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(SplashActivity.this, MainActivity.class));
            }
        });
    }
}
