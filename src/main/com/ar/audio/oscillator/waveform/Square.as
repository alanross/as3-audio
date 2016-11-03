package com.ar.audio.oscillator.waveform
{
	import com.ar.audio.oscillator.*;

	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class Square implements IWaveform
	{
		/**
		 * Creates a new instance of Square.
		 */
		public function Square()
		{
		}

		/**
		 * @inheritDoc
		 */
		public function process( phase:Number ):Number
		{
			return ( phase - int( phase ) ) < .5 ? 1 : -1;
		}

		/**
		 * Creates and returns a string representation of the Square object.
		 */
		public function toString():String
		{
			return "[Square]";
		}
	}
}