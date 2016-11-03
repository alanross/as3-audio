package com.ar.audio.oscillator.waveform
{
	import com.ar.audio.oscillator.IWaveform;

	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class Noise implements IWaveform
	{
		/**
		 * Creates a new instance of Noise.
		 */
		public function Noise()
		{
		}

		/**
		 * @inheritDoc
		 */
		public function process( phase:Number ):Number
		{
			var r:Number = Math.random();

			return r;
		}

		/**
		 * Creates and returns a string representation of the Noise object.
		 */
		public function toString():String
		{
			return "[Noise]";
		}
	}
}