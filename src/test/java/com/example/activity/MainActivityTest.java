package com.example.activity;

import android.app.Activity;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;

import static org.junit.Assert.assertTrue;

@RunWith(RobolectricTestRunner.class)
public class MainActivityTest {

  @org.junit.Test
  public void testSomething() throws Exception {
    Activity activity = Robolectric.setupActivity(MainActivity.class);
    assertTrue(activity.getTitle().toString().equals("Deckard"));
  }
}
