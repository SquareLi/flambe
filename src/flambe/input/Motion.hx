//
// Flambe - Rapid game development
// https://github.com/aduros/flambe/blob/master/LICENSE.txt

package flambe.input;

import flambe.util.Signal1;

/**
 * <p>Functions related to the device's motion sensors.</p>
 *
 * <p>NOTE: Not yet supported in Flash/AIR.</p>
 */
interface Motion
{
    /**
     * Whether device acceleration events are supported. If true, the acceleration and/or
     * accelerationIncludingGravity signals will be emitted.
     */
    public var accelerationSupported (get, null) :Bool;

    /**
     * Periodically emits the device's current linear acceleration, excluding the pull of gravity.
     * This will only be emitted if the device has a gyroscope.
     */
    public var acceleration (default, null) :Signal1<Acceleration>;

    /**
     * Periodically emits the devices's current linear acceleration, including the pull of gravity.
     */
    public var accelerationIncludingGravity (default, null) :Signal1<Acceleration>;

    /** Whether device orientation (attitude) events are supported. */
    public var attitudeSupported (get, null) :Bool;

    /** Periodically emits the device's current attitude. */
    public var attitude (default, null) :Signal1<Attitude>;
}
