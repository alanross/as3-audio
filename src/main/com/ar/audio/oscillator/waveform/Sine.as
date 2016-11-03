package com.ar.audio.oscillator.waveform
{
	import com.ar.audio.oscillator.*;

	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class Sine implements IWaveform
	{
		private static const PI2:Number = Math.PI * 2;

		/**
		 * Creates a new instance of Sine.
		 */
		public function Sine()
		{
		}

		/**
		 * @inheritDoc
		 */
		public function process( phase:Number ):Number
		{
			return Math.sin( phase * PI2 );
		}

		/**
		 * Creates and returns a string representation of the Sine object.
		 */
		public function toString():String
		{
			return "[Sine]";
		}
	}
}