package net.evendanan.navajo.welcome.bl

import com.spotify.mobius.EventSource
import com.spotify.mobius.Mobius
import com.spotify.mobius.MobiusLoop
import com.spotify.mobius.Next
import com.spotify.mobius.Update
import com.spotify.mobius.functions.Consumer
import com.spotify.mobius.runners.WorkRunner
import net.evendanan.navajo.mobius.SimpleConnectable

private var SECONDS_PER_SLIDE = 8
private var SLIDES_COUNT = 3

object WelcomeBL {
    @JvmStatic
    fun createMobius(loopRunnerFactory: () -> WorkRunner, startModel: Model, eventSource: EventSource<Event>, ui: Consumer<Effect>): MobiusLoop<Model, Event, Effect> =
            Mobius.loop(WelcomeUpdate(), SimpleConnectable(ui::accept))
                    .eventRunner(loopRunnerFactory)
                    .effectRunner(loopRunnerFactory)
                    .eventSource(eventSource)
                    .startFrom(startModel)
}

private class WelcomeUpdate : Update<Model, Event, Effect> {
    override fun update(model: Model, event: Event): Next<Model, Effect> {
        return when (event) {
            Event.UserClickedLogin -> Next.dispatch(setOf(Effect.NavigateToLogin))
            Event.UserClickedRegister -> Next.dispatch(setOf(Effect.NavigateToRegister))
            is Event.UserClickedSlideMoreInfo -> Next.dispatch(setOf(Effect.NavigateToExternalWebPage("https://www.youtube.com/watch?v=dQw4w9WgXcQ?t=${model.whatIsNavajoSlideIndex * 10}")))
            Event.SecondTicked -> Next.next<Model, Effect>(Model(model.secondsTicked + 1))
            Event.UserClickedNextSlide -> Next.next<Model, Effect>(Model(SECONDS_PER_SLIDE * (model.whatIsNavajoSlideIndex + 1)))
            Event.UserClickedPreviousSlide -> {
                val newSlideInt = (model.whatIsNavajoSlideIndex - 1).let { if (it < 0) SLIDES_COUNT - 1 else it }
                Next.next<Model, Effect>(Model(SECONDS_PER_SLIDE * newSlideInt))
            }
        }
    }
}

class Model internal constructor(val secondsTicked: Int) {
    constructor() : this(0)

    val whatIsNavajoSlideIndex: Int = (secondsTicked / SECONDS_PER_SLIDE) % SLIDES_COUNT
}

sealed class Event {
    object UserClickedLogin : Event()
    object UserClickedRegister : Event()
    object SecondTicked : Event()
    object UserClickedNextSlide : Event()
    object UserClickedPreviousSlide : Event()
    object UserClickedSlideMoreInfo : Event()
}

sealed class Effect {
    object NavigateToLogin : Effect()
    object NavigateToRegister : Effect()
    data class NavigateToExternalWebPage(val webPageUrl: String) : Effect()
}

