
package com.example.shilpakala;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    EditText artisanName, productName, priceText;
    TextView result;
    Button generateBtn;
    ImageView imageView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        artisanName = findViewById(R.id.artisanName);
        productName = findViewById(R.id.productName);
        priceText = findViewById(R.id.priceText);
        result = findViewById(R.id.result);
        generateBtn = findViewById(R.id.generateBtn);

        generateBtn.setOnClickListener(v -> {
            String name = artisanName.getText().toString();
            String product = productName.getText().toString();
            String price = priceText.getText().toString();

            result.setText(
                    "Handmade in Karnataka\n" +
                            "Artisan: " + name + "\n" +
                            "Product: " + product + "\n" +
                            "Price: ₹" + price);
        });
    }
}
