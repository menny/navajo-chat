package net.evendanan.navajo.welcome.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.spotify.mobius.MobiusLoop;
import com.spotify.mobius.android.runners.MainThreadWorkRunner;
import com.spotify.mobius.disposables.Disposable;

import net.evendanan.navajo.mobius.SimpleEventSource;
import net.evendanan.navajo.welcome.bl.Effect;
import net.evendanan.navajo.welcome.bl.Event;
import net.evendanan.navajo.welcome.bl.Model;
import net.evendanan.navajo.welcome.bl.WelcomeBL;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

public class WelcomeFragment extends Fragment {

    private static final String WELCOME_MOBIUS_MODEL_BUNDLE_TICKS_KEY = "WELCOME_MOBIUS_MODEL_BUNDLE_TICKS_KEY";
    private MobiusLoop<Model, Event, Effect> mMobius;

    private final SimpleEventSource<Event> mEventSource = new SimpleEventSource<>();

    private final Handler mTimingHandler = new Handler();
    private Disposable mDisposable = () -> { };
    private View mWhatIsNavajoFlipper;

    public WelcomeFragment() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        mMobius = WelcomeBL.createMobius(MainThreadWorkRunner::create,
                resolveStartModel(savedInstanceState),
                mEventSource,
                this::onMobiusEffect);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        mWhatIsNavajoFlipper = view.findViewById(R.id.welcome_view_flipper);
    }

    @NonNull
    private static Model resolveStartModel(Bundle savedInstanceState) {
        if (savedInstanceState.containsKey(WELCOME_MOBIUS_MODEL_BUNDLE_TICKS_KEY)) {
            return new Model(savedInstanceState.getInt(WELCOME_MOBIUS_MODEL_BUNDLE_TICKS_KEY));
        } else {
            return new Model();
        }
    }

    private void onMobiusEffect(Effect effect) {
        if (effect instanceof Effect.NavigateToExternalWebPage) {
            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(((Effect.NavigateToExternalWebPage) effect).getWebPageUrl())));
        } else if (effect instanceof Effect.NavigateToLogin) {

        } else if (effect instanceof Effect.NavigateToRegister) {

        }
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle outState) {
        super.onSaveInstanceState(outState);
        final Model mostRecentModel = mMobius.getMostRecentModel();
        if (mostRecentModel != null) {
            outState.putInt(WELCOME_MOBIUS_MODEL_BUNDLE_TICKS_KEY, mostRecentModel.getSecondsTicked());
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        mDisposable = mMobius.observe(this::onMobiusModelChanged);
        mTimingHandler.postDelayed(() -> mEventSource.dispatchEvent(Event.SecondTicked.INSTANCE), mEventSource, 1000);
    }

    private void onMobiusModelChanged(Model model) {

    }

    @Override
    public void onStop() {
        super.onStop();
        mDisposable.dispose();
        mTimingHandler.removeCallbacksAndMessages(mEventSource);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mMobius.dispose();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_welcome, container, false);
    }

}
