package com.example.android_host_app

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val openSdkButton: Button = findViewById(R.id.openSdkButton)
        openSdkButton.setOnClickListener {
            startActivity(Intent(this, UniversalSdkActivity::class.java))
        }
    }
}
