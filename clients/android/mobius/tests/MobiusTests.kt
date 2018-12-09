package net.evendanan.navajo.mobius.tests

import com.spotify.mobius.functions.Consumer
import net.evendanan.navajo.mobius.SimpleConnectable
import net.evendanan.navajo.mobius.SimpleEventSource
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.TestInstance

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class MobiusTests {

    @Test
    fun testDispatchLifeCycle() {
        val effectsConsumer = EffectsConsumer()
        val eventsConsumer = EventsConsumer()

        val underTest = SimpleConnectable<String, Int>(effectsConsumer::accept)
        underTest.dispatchEvent(1)
        val connection = underTest.connect(eventsConsumer::accept)

        Assertions.assertTrue(eventsConsumer.events.isEmpty())
        underTest.dispatchEvent(2)
        Assertions.assertEquals(1, eventsConsumer.events.size)
        Assertions.assertEquals(2, eventsConsumer.events.last())

        underTest.dispatchEvent(3)
        Assertions.assertEquals(2, eventsConsumer.events.size)
        Assertions.assertEquals(3, eventsConsumer.events.last())

        connection.dispose()

        underTest.dispatchEvent(4)
        Assertions.assertEquals(2, eventsConsumer.events.size)
        Assertions.assertEquals(3, eventsConsumer.events.last())
    }

    @Test
    fun testEventSourceLifeCycle() {
        val underTest = SimpleEventSource<String>()

        val eventsList = mutableListOf<String>()

        underTest.dispatchEvent("hello")

        val disposable = underTest.subscribe { s -> eventsList.add(s) }
        Assertions.assertTrue(eventsList.isEmpty())

        underTest.dispatchEvent("hello again")
        Assertions.assertEquals(1, eventsList.size)
        Assertions.assertEquals("hello again", eventsList.last())

        underTest.dispatchEvent("hello again X 2")
        Assertions.assertEquals(2, eventsList.size)
        Assertions.assertEquals("hello again X 2", eventsList.last())

        disposable.dispose()

        underTest.dispatchEvent("I forgot to say goodbye")
        Assertions.assertEquals(2, eventsList.size)
        Assertions.assertEquals("hello again X 2", eventsList.last())
    }
}

private class EffectsConsumer : Consumer<String> {
    val effects = mutableListOf<String>()
    override fun accept(effect: String) {
        effects.add(effect)
    }
}

private class EventsConsumer : Consumer<Int> {
    val events = mutableListOf<Int>()
    override fun accept(event: Int) {
        events.add(event)
    }
}