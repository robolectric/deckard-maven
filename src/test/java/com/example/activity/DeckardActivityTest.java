package com.example.activity;

import android.app.Activity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import static org.fest.assertions.api.ANDROID.assertThat;

@RunWith(RobolectricTestRunner.class)
public class DeckardActivityTest {

  @Test
  public void testSomething() throws Exception {
    Activity activity = Robolectric.buildActivity(DeckardActivity.class).create().get();
    assertThat(activity).isNotNull();
  }
}
