model RLCircuit
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 100)  annotation(Placement(visible = true, transformation(origin = {-40, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1)  annotation(Placement(visible = true, transformation(origin = {34, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-56, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage1 annotation(Placement(visible = true, transformation(origin = {-54, -2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(ground1.p, sineVoltage1.n) annotation(Line(points = {{-56, -54}, {-54, -54}, {-54, -12}, {-54, -12}}, color = {0, 0, 255}));
  connect(inductor1.n, sineVoltage1.n) annotation(Line(points = {{44, 38}, {52, 38}, {52, -12}, {-54, -12}, {-54, -12}}, color = {0, 0, 255}));
  connect(resistor1.p, sineVoltage1.p) annotation(Line(points = {{-50, 38}, {-54, 38}, {-54, 8}, {-54, 8}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(Line(points = {{-30, 38}, {24, 38}, {24, 38}, {24, 38}}, color = {0, 0, 255}));
  annotation(uses(Modelica(version = "3.2.1")));
end RLCircuit;