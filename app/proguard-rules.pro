# MJ Lite ProGuard Configuration

# Preserve Kotlin classes
-keepclassmembers class kotlin.Metadata {
    public <methods>;
}

# Keep Compose classes
-keep class androidx.compose.** { *; }

# Keep Room database classes
-keep class androidx.room.** { *; }
-keepclassmembers class * extends androidx.room.RoomDatabase { *; }

# Keep Data classes
-keepclassmembers class com.mjlite.app.data.** {
    public <methods>;
}

# Keep ViewModel
-keepclassmembers class androidx.lifecycle.ViewModel { *; }

# Remove logging
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
}

# Optimization
-optimizationpasses 5
-dontusemixedcaseclassnames
-verbose
