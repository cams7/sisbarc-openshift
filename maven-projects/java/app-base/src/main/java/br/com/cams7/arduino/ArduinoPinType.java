/**
 * 
 */
package br.com.cams7.arduino;

/**
 * @author cams7
 *
 */
public enum ArduinoPinType {
	DIGITAL('d'), // Porta Digital
	ANALOG('a'); // Porta Analogica

	private char abbreviation;

	private ArduinoPinType(char abbreviation) {
		this.abbreviation = abbreviation;
	}

	public char getAbbreviation() {
		return abbreviation;
	}

}
