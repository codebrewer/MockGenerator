package codes.seanhenry.util;

import com.jetbrains.swift.psi.SwiftPsiElementFactory;
import com.jetbrains.swift.psi.SwiftTypeAnnotatedPattern;
import com.jetbrains.swift.psi.SwiftVariableDeclaration;

public class PropertyDecorator {

  public static final String OPTIONAL = "?";
  public static final String IMPLICITLY_UNWRAPPED_OPTIONAL = "!";
  private final StringDecorator stringDecorator;
  private final String optional;
  private final String scope;

  public PropertyDecorator(StringDecorator stringDecorator, String optional, String scope) {
    this.stringDecorator = stringDecorator;
    this.optional = optional;
    this.scope = scope;
  }

  public SwiftVariableDeclaration decorate(SwiftVariableDeclaration property) {
    SwiftTypeAnnotatedPattern pattern = (SwiftTypeAnnotatedPattern) property.getPatternInitializerList().get(0).getPattern();
    String label = stringDecorator.process(pattern.getPattern().getText());
    String literal = scope + "var " + label + ": " + MySwiftPsiUtil.getResolvedTypeName(pattern.getTypeAnnotation(), true) + optional;
    return (SwiftVariableDeclaration)SwiftPsiElementFactory.getInstance(property).createStatement(literal);
  }
}
