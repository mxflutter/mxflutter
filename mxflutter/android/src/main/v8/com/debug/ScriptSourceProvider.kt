package com.debug

interface ScriptSourceProvider {

    val allScriptIds: Collection<String>

    fun getSource(scriptId: String): String
}
