package com.ar.audio.oscillator.waveform
{
	import com.ar.audio.oscillator.*;

	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class Sawtooth implements IWaveform
	{
		/**
		 * Creates a new instance of Sawtooth.
		 */
		public function Sawtooth()
		{
		}

		/**
		 * @inheritDoc
		 */
		public function process( phase:Number ):Number
		{
			return ( phase - int( phase ) ) * 2 - 1;
		}

		/**
		 * Creates and returns a string representation of the Sawtooth object.
		 */
		public function toString():String
		{
			return "[Sawtooth]";
		}
	}
}