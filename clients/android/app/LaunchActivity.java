package net.evendanan.navajo.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import net.evendanan.navajo.welcome.ui.WelcomeActivity;

import androidx.annotation.Nullable;

public class LaunchActivity extends Activity {

    @Override
    protected void onCreate(@Nullable final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //TODO(menny): check if login is required, if so direct to Welcome, else launch MainActivity
        //For now, we'll just launch welcome.
        startActivity(new Intent(getApplicationContext(), WelcomeActivity.class));
    }
}
