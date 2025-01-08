# Optimize the code
-optimizationpasses 5
-dontpreverify
-allowaccessmodification
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

# General Android rules
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.view.View
-keep public class * extends androidx.fragment.app.Fragment

# Keep Parcelable classes
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# Keep entry points for XML-based layouts
-keepclassmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

# Prevent obfuscation of any annotated methods or classes (e.g., Gson serialization)
-keepattributes *Annotation*

# Keep Gson data classes
-keep class com.google.gson.** { *; }
-keepnames class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

# Retrofit rules
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions

# OkHttp rules
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**

# Timber rules
-dontwarn timber.log.Timber

# Rules for Appcircle dependencies (adjust based on used libraries)
-dontwarn io.appcircle.**

# Keep custom views
-keepclassmembers class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

# Keep lambdas
-keep class * {
    *** lambda*(...);
}

# Avoid obfuscation of methods and fields used in reflection
-keepclassmembers class * {
    void *(...);
    *** get*(...);
    *** set*(...);
}

# Do not strip debugging info (useful during development)
-keepattributes SourceFile, LineNumberTable
