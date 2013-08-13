package com.example.activity;

import android.app.Activity;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;

import static org.junit.Assert.assertTrue;

@RunWith(RobolectricTestRunner.class)
public class DeckardActivityTest {

  @org.junit.Test
  public void testSomething() throws Exception {
    Activity activity = Robolectric.buildActivity(DeckardActivity.class).create().get();
    assertTrue(activity != null);
  }
}
