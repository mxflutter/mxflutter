package com.debug

class ScriptProviderImp : ScriptSourceProvider {
    override val allScriptIds: Collection<String>
        get() = MXDebug.getScriptsName()

    override fun getSource(scriptId: String): String {
        return MXDebug.getScripts(scriptId)
    }
}
