package com.cya.mybs

import io.flutter.embedding.android.FlutterActivity
import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import android.os.Bundle;

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        AppCenter.start(application, "162e0af9-4844-4039-8e5b-2e302ac3d93a",
                Analytics::class.java, Crashes::class.java);
    }
}
