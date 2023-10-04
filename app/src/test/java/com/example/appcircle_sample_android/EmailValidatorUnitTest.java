import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

class EmailValidatorTest {
  @Test
  public void emailValidator_CorrectEmailSimple_ReturnsTrue() {
    assertTrue(EmailValidator.isValidEmail("name@email.com"));
  }

  // @Test
  // public void emailValidator_nonCorrectEmailSimple_ReturnsFalse() {
  //   assertTrue(EmailValidator.isValidEmail("nameemailcom"));
  // }
}
