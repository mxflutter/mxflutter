package com.debug

import android.content.Context
import com.facebook.stetho.InspectorModulesProvider
import com.facebook.stetho.Stetho
import com.facebook.stetho.inspector.console.RuntimeReplFactory
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain
import java.lang.ref.WeakReference
import com.facebook.stetho.inspector.protocol.module.Debugger as FacebookDebuggerStub
import com.facebook.stetho.inspector.protocol.module.Runtime as FacebookRuntimeBase

object StethoHelper {
    private var debugger: Debugger? = null
    private var runtime: Runtime? = null

    private var v8MessengerRef: WeakReference<V8Messenger>? = null

    @JvmStatic
    fun initializeDebugger(context: Context, scriptSourceProvider: ScriptSourceProvider) {
        val initializer = Stetho.newInitializerBuilder(context)
                .enableDumpapp(Stetho.defaultDumperPluginsProvider(context))
                .enableWebKitInspector(defaultInspectorModulesProvider(context, scriptSourceProvider))
                .build()
        Stetho.initialize(initializer)
    }

    @JvmStatic
    fun defaultInspectorModulesProvider(
        context: Context,
        scriptSourceProvider: ScriptSourceProvider
    ): InspectorModulesProvider {
        return InspectorModulesProvider { getInspectorModules(context, scriptSourceProvider) }
    }

    @JvmOverloads
    fun getInspectorModules(
        context: Context,
        scriptSourceProvider: ScriptSourceProvider,
        factory: RuntimeReplFactory? = null
    ): Iterable<ChromeDevtoolsDomain> {
        return try {
            getDefaultInspectorModulesWithDebugger(context, scriptSourceProvider, factory)
        } catch (e: Throwable) { // v8 throws Error instead of Exception on wrong thread access, etc.
            getDefaultInspectorModules(context, factory)
        }
    }

    fun getDefaultInspectorModulesWithDebugger(
        context: Context,
        scriptSourceProvider: ScriptSourceProvider,
        factory: RuntimeReplFactory? = null
    ): Iterable<ChromeDevtoolsDomain> {
        val defaultInspectorModules = getDefaultInspectorModules(context, factory)

        val inspectorModules = ArrayList<ChromeDevtoolsDomain>()
        for (defaultModule in defaultInspectorModules) {
            if (FacebookDebuggerStub::class != defaultModule::class &&
                    FacebookRuntimeBase::class != defaultModule::class
            ) {
                inspectorModules.add(defaultModule)
            }
        }

        debugger = Debugger(scriptSourceProvider)
        runtime = Runtime(factory)
        inspectorModules.add(debugger!!)
        inspectorModules.add(runtime!!)

        bindV8ToChromeDebuggerIfReady()

        return inspectorModules
    }

    fun initializeWithV8Messenger(v8Messenger: V8Messenger) {
        v8MessengerRef = WeakReference(v8Messenger)
        bindV8ToChromeDebuggerIfReady()
    }

    fun notifyScriptsChanged(name: String) {
        debugger?.onScriptsChanged(name)
    }

    private fun bindV8ToChromeDebuggerIfReady() {
        val v8Messenger = v8MessengerRef?.get()
        val chromeDebuggerAttached = debugger != null && runtime != null

        if (v8Messenger == null || !chromeDebuggerAttached) return

        bindV8DebuggerToChromeDebugger(
                debugger!!,
                runtime!!,
                v8Messenger
        )
    }

    private fun bindV8DebuggerToChromeDebugger(
        chromeDebugger: Debugger,
        chromeRuntime: Runtime,
        v8Messenger: V8Messenger
    ) {
        chromeDebugger.initialize(v8Messenger)
        chromeRuntime.initialize(v8Messenger)
    }

    private fun getDefaultInspectorModules(
        context: Context,
        factory: RuntimeReplFactory?
    ): Iterable<ChromeDevtoolsDomain> {
        return Stetho.DefaultInspectorModulesBuilder(context)
                .runtimeRepl(factory)
                .finish()
    }
}
