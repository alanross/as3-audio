package com.ar.audio.oscillator
{
	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public interface IWaveform
	{
		/**
		 * Create data to be sent to the sound card.
		 */
		function process( phase:Number ):Number;
	}
}