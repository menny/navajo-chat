package net.evendanan.navajo.mobius

import com.spotify.mobius.Connectable
import com.spotify.mobius.Connection
import com.spotify.mobius.EventSource
import com.spotify.mobius.disposables.Disposable
import com.spotify.mobius.functions.Consumer

@Suppress("UNUSED_PARAMETER")
private fun <V> noOpConsumer(doNotCare: V) = Unit

open class SimpleEventSource<E> : EventSource<E> {
    private var eventConsumer: (E) -> Unit = ::noOpConsumer

    fun dispatchEvent(event: E) {
        eventConsumer(event)
    }

    override fun subscribe(consumer: Consumer<E>): Disposable {
        eventConsumer = consumer::accept
        return Disposable { eventConsumer = ::noOpConsumer }
    }
}

open class SimpleConnectable<F, E>(private val liveEffectConsumer: (F) -> Unit) : Connectable<F, E> {
    constructor(consumer: Consumer<F>) : this(consumer::accept)

    private var eventConsumer: (E) -> Unit = ::noOpConsumer
    private var effectConsumer: (F) -> Unit = ::noOpConsumer

    fun dispatchEvent(event: E) {
        eventConsumer(event)
    }

    override fun connect(incomingEventConsumer: Consumer<E>): Connection<F> {
        eventConsumer = incomingEventConsumer::accept
        effectConsumer = liveEffectConsumer

        return object : Connection<F> {
            override fun dispose() {
                eventConsumer = ::noOpConsumer
                effectConsumer = ::noOpConsumer
            }

            override fun accept(effect: F) {
                effectConsumer(effect)
            }
        }
    }

}