package net.evendanan.navajo.welcome.ui;

import android.os.Bundle;

import net.evendanan.chauffeur.lib.FragmentChauffeurActivity;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

public class WelcomeActivity extends FragmentChauffeurActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_welcome);
    }

    @Override
    protected int getFragmentRootUiElementId() {
        return R.id.welcome_root_content;
    }

    @NonNull
    @Override
    protected Fragment createRootFragmentInstance() {
        return new WelcomeFragment();
    }
}
