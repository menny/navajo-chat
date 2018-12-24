package net.evendanan.navajo.welcome.bl.tests

import com.spotify.mobius.Connection
import com.spotify.mobius.EventSource
import com.spotify.mobius.MobiusLoop
import com.spotify.mobius.disposables.Disposable
import com.spotify.mobius.functions.Consumer
import com.spotify.mobius.runners.ImmediateWorkRunner
import net.evendanan.navajo.welcome.bl.Effect
import net.evendanan.navajo.welcome.bl.Event
import net.evendanan.navajo.welcome.bl.Model
import net.evendanan.navajo.welcome.bl.SECONDS_PER_SLIDE
import net.evendanan.navajo.welcome.bl.SLIDES_COUNT
import net.evendanan.navajo.welcome.bl.WelcomeBL
import org.junit.jupiter.api.AfterEach
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.TestInstance

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class LoopTests {

    private lateinit var mobiusController: MobiusLoop<Model, Event, Effect>
    private lateinit var fakeUI: FakeUI

    @BeforeEach
    fun setup() {
        fakeUI = FakeUI()
        mobiusController = WelcomeBL.createMobius({ ImmediateWorkRunner() }, Model(0), fakeUI.eventSource, fakeUI.connection)
    }

    @AfterEach
    fun tearDown() {
        mobiusController.dispose()
    }

    @Test
    fun testNextSlideOnTimer() {
        val eventsConsumer = fakeUI.eventsConsumer!!

        repeat(4) {
            repeat(SLIDES_COUNT) { slideIndex ->
                repeat(SECONDS_PER_SLIDE) {
                    Assertions.assertEquals(slideIndex, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
                    eventsConsumer.accept(Event.SecondTicked)
                }
            }
        }
    }

    @Test
    fun testUserClickedNext() {
        val eventsConsumer = fakeUI.eventsConsumer!!

        Assertions.assertEquals(0, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        eventsConsumer.accept(Event.UserClickedNextSlide)
        Assertions.assertEquals(1, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        eventsConsumer.accept(Event.UserClickedNextSlide)
        Assertions.assertEquals(2, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        eventsConsumer.accept(Event.UserClickedNextSlide)
        Assertions.assertEquals(0, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        eventsConsumer.accept(Event.UserClickedNextSlide)
        Assertions.assertEquals(1, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        repeat(8) { eventsConsumer.accept(Event.SecondTicked) }
        Assertions.assertEquals(2, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
    }

    @Test
    fun testUserClickedPrevious() {
        val eventsConsumer = fakeUI.eventsConsumer!!

        Assertions.assertEquals(0, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        repeat(8) { eventsConsumer.accept(Event.SecondTicked) }
        Assertions.assertEquals(1, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        eventsConsumer.accept(Event.UserClickedPreviousSlide)
        Assertions.assertEquals(0, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        eventsConsumer.accept(Event.UserClickedPreviousSlide)
        Assertions.assertEquals(2, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
        repeat(8) { eventsConsumer.accept(Event.SecondTicked) }
        Assertions.assertEquals(0, mobiusController.mostRecentModel!!.whatIsNavajoSlideIndex)
    }

    @Test
    fun testUserClickMoreInfo() {
        val eventsConsumer = fakeUI.eventsConsumer!!

        eventsConsumer.accept(Event.UserClickedSlideMoreInfo)
        Assertions.assertTrue(fakeUI.connection.lastEffect is Effect.NavigateToExternalWebPage)
        Assertions.assertTrue((fakeUI.connection.lastEffect as Effect.NavigateToExternalWebPage).webPageUrl.endsWith("t=0"))

        eventsConsumer.accept(Event.UserClickedNextSlide)
        eventsConsumer.accept(Event.UserClickedSlideMoreInfo)
        Assertions.assertTrue(fakeUI.connection.lastEffect is Effect.NavigateToExternalWebPage)
        Assertions.assertTrue((fakeUI.connection.lastEffect as Effect.NavigateToExternalWebPage).webPageUrl.endsWith("t=10"))
    }

    @Test
    fun testUserClickedLogin() {
        val eventsConsumer = fakeUI.eventsConsumer!!

        eventsConsumer.accept(Event.UserClickedLogin)
        Assertions.assertTrue(fakeUI.connection.lastEffect is Effect.NavigateToLogin)
    }

    @Test
    fun testUserClickedRegister() {
        val eventsConsumer = fakeUI.eventsConsumer!!

        eventsConsumer.accept(Event.UserClickedRegister)
        Assertions.assertTrue(fakeUI.connection.lastEffect is Effect.NavigateToRegister)
    }
}

private class FakeUI {
    var eventsConsumer: Consumer<Event>? = null
    val connection: FakeConnection = FakeConnection()
    val eventSource: EventSource<Event> = EventSource { consumer ->
        eventsConsumer = consumer
        Disposable { eventsConsumer = null }
    }
}

private class FakeConnection : Connection<Effect> {
    var isDisposed = false
    var effects = mutableListOf<Effect>()
    val lastEffect: Effect
        get() = effects.last()

    override fun accept(effect: Effect) {
        effects.add(effect)
    }

    override fun dispose() {
        isDisposed = true
    }
}