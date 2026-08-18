package external.memory;

#if cpp
/**
 * Memory class to properly get accurate memory counts
 * for the program.
 * @author Leather128 (Haxe Bindings) - David Robert Nadeau (Original C Header)
 * even if the author is above this, thank you Leather128 for the Haxe Bindings!
 */
#if ios
@:buildXml('<include name="/Users/runner/work/NightmareVision-Mobile/NightmareVision-Mobile/source/external/memory/build.xml" />')
#else
@:buildXml('<include name="../../../../source/external/memory/build.xml" />')
#end
@:include("Memory.h")
extern class Memory
{
	/**
	 * Returns the current resident set size (physical memory use) measured
	 * in bytes, or zero if the value cannot be determined on this OS.
	 */
	@:native("getCurrentRSS")
	public static function getCurrentUsage():cpp.UInt64;
}
#end
